; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i64, i32, i32 }
%struct.bio = type { i64, i32 }

@REQ_OP_READ = common dso_local global i64 0, align 8
@BLK_STS_AGAIN = common dso_local global i64 0, align 8
@REQ_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dio*, %struct.bio*)* @dio_bio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dio_bio_complete(%struct.dio* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.dio*, %struct.dio** %3, align 8
  %11 = getelementptr inbounds %struct.dio, %struct.dio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REQ_OP_READ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.dio*, %struct.dio** %3, align 8
  %17 = getelementptr inbounds %struct.dio, %struct.dio* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @BLK_STS_AGAIN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @REQ_NOWAIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.dio*, %struct.dio** %3, align 8
  %40 = getelementptr inbounds %struct.dio, %struct.dio* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %46

41:                                               ; preds = %29, %25
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.dio*, %struct.dio** %3, align 8
  %45 = getelementptr inbounds %struct.dio, %struct.dio* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.dio*, %struct.dio** %3, align 8
  %49 = getelementptr inbounds %struct.dio, %struct.dio* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @bio_check_pages_dirty(%struct.bio* %56)
  br label %64

58:                                               ; preds = %52, %47
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @bio_release_pages(%struct.bio* %59, i32 %60)
  %62 = load %struct.bio*, %struct.bio** %4, align 8
  %63 = call i32 @bio_put(%struct.bio* %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32 @bio_check_pages_dirty(%struct.bio*) #1

declare dso_local i32 @bio_release_pages(%struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
