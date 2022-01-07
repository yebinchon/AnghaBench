; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_submit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.dio_submit = type { i32, i64, %struct.bio*, i32 (%struct.bio*, i32, i32)* }
%struct.bio = type { i32, %struct.dio* }

@REQ_OP_READ = common dso_local global i64 0, align 8
@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*, %struct.dio_submit*)* @dio_bio_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_submit(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.dio_submit*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %4, align 8
  %7 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %8 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %7, i32 0, i32 2
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load %struct.dio*, %struct.dio** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  store %struct.dio* %10, %struct.dio** %12, align 8
  %13 = load %struct.dio*, %struct.dio** %3, align 8
  %14 = getelementptr inbounds %struct.dio, %struct.dio* %13, i32 0, i32 6
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dio*, %struct.dio** %3, align 8
  %18 = getelementptr inbounds %struct.dio, %struct.dio* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dio*, %struct.dio** %3, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 6
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.dio*, %struct.dio** %3, align 8
  %26 = getelementptr inbounds %struct.dio, %struct.dio* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.dio*, %struct.dio** %3, align 8
  %31 = getelementptr inbounds %struct.dio, %struct.dio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REQ_OP_READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.dio*, %struct.dio** %3, align 8
  %37 = getelementptr inbounds %struct.dio, %struct.dio* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = call i32 @bio_set_pages_dirty(%struct.bio* %41)
  br label %43

43:                                               ; preds = %40, %35, %29, %2
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dio*, %struct.dio** %3, align 8
  %48 = getelementptr inbounds %struct.dio, %struct.dio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %50 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %49, i32 0, i32 3
  %51 = load i32 (%struct.bio*, i32, i32)*, i32 (%struct.bio*, i32, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.bio*, i32, i32)* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %55 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %54, i32 0, i32 3
  %56 = load i32 (%struct.bio*, i32, i32)*, i32 (%struct.bio*, i32, i32)** %55, align 8
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = load %struct.dio*, %struct.dio** %3, align 8
  %59 = getelementptr inbounds %struct.dio, %struct.dio* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %62 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %56(%struct.bio* %57, i32 %60, i32 %63)
  %65 = load i32, i32* @BLK_QC_T_NONE, align 4
  %66 = load %struct.dio*, %struct.dio** %3, align 8
  %67 = getelementptr inbounds %struct.dio, %struct.dio* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %73

68:                                               ; preds = %43
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = call i32 @submit_bio(%struct.bio* %69)
  %71 = load %struct.dio*, %struct.dio** %3, align 8
  %72 = getelementptr inbounds %struct.dio, %struct.dio* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %53
  %74 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %75 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %74, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %75, align 8
  %76 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %77 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %79 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_set_pages_dirty(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
