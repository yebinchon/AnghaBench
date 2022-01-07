; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_mm_account_pinned_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_mm_account_pinned_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmpin = type { i64, i32 }
%struct.user_struct = type { i32 }

@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mm_account_pinned_pages(%struct.mmpin* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmpin*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.user_struct*, align 8
  store %struct.mmpin* %0, %struct.mmpin** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @CAP_IPC_LOCK, align 4
  %12 = call i64 @capable(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %80

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = add i64 %21, 2
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %24 = call i64 @rlimit(i32 %23)
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.mmpin*, %struct.mmpin** %4, align 8
  %28 = getelementptr inbounds %struct.mmpin, %struct.mmpin* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = sext i32 %29 to i64
  %33 = inttoptr i64 %32 to %struct.user_struct*
  br label %36

34:                                               ; preds = %18
  %35 = call %struct.user_struct* (...) @current_user()
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi %struct.user_struct* [ %33, %31 ], [ %35, %34 ]
  store %struct.user_struct* %37, %struct.user_struct** %10, align 8
  br label %38

38:                                               ; preds = %52, %36
  %39 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %40 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %39, i32 0, i32 0
  %41 = call i64 @atomic_long_read(i32* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %80

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %54 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @atomic_long_cmpxchg(i32* %54, i64 %55, i64 %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %38, label %60

60:                                               ; preds = %52
  %61 = load %struct.mmpin*, %struct.mmpin** %4, align 8
  %62 = getelementptr inbounds %struct.mmpin, %struct.mmpin* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %67 = call i32 @get_uid(%struct.user_struct* %66)
  %68 = load %struct.mmpin*, %struct.mmpin** %4, align 8
  %69 = getelementptr inbounds %struct.mmpin, %struct.mmpin* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.mmpin*, %struct.mmpin** %4, align 8
  %72 = getelementptr inbounds %struct.mmpin, %struct.mmpin* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %79

73:                                               ; preds = %60
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.mmpin*, %struct.mmpin** %4, align 8
  %76 = getelementptr inbounds %struct.mmpin, %struct.mmpin* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %74
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %73, %65
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %48, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local %struct.user_struct* @current_user(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @get_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
