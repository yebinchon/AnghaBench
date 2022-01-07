; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_recover_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_slot = type { i32 }
%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32, i64, i64* }

@.str = private unnamed_addr constant [42 x i8] c"recover_slot jid %d gen %u short size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"recover_slot jid %d gen %u prev %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dlm_slot*)* @gdlm_recover_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdlm_recover_slot(i8* %0, %struct.dlm_slot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dlm_slot*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.lm_lockstruct*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.dlm_slot* %1, %struct.dlm_slot** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.gfs2_sbd*
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %5, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  store %struct.lm_lockstruct* %11, %struct.lm_lockstruct** %6, align 8
  %12 = load %struct.dlm_slot*, %struct.dlm_slot** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %17 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %20 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %29 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %32 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @fs_err(%struct.gfs2_sbd* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30, i32 %33)
  %35 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %36 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  br label %74

38:                                               ; preds = %2
  %39 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %40 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %51 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %54 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @fs_info(%struct.gfs2_sbd* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %52, i64 %59)
  br label %61

61:                                               ; preds = %47, %38
  %62 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %63 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %66 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %72 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %61, %25
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
