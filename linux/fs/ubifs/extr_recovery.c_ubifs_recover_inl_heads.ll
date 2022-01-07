; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_inl_heads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_inl_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"checking index head at %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"checking LPT head at %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_recover_inl_heads(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(%struct.ubifs_info* %7, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @recover_head(%struct.ubifs_info* %28, i32 %31, i32 %34, i8* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %17
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %17
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @recover_head(%struct.ubifs_info* %49, i32 %52, i32 %55, i8* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %41, %39
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

declare dso_local i32 @recover_head(%struct.ubifs_info*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
