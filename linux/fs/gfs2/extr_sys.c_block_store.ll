; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_block_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_block_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@DFL_BLOCK_LOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @block_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lm_lockstruct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  store %struct.lm_lockstruct* %12, %struct.lm_lockstruct** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kstrtoint(i8* %13, i32 0, i32* %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %24 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %8, align 8
  %25 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %42

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %32 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %8, align 8
  %33 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = call i32 (...) @smp_mb__after_atomic()
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %37 = call i32 @gfs2_glock_thaw(%struct.gfs2_sbd* %36)
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %38, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @gfs2_glock_thaw(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
