; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_add_replay_bud.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_add_replay_bud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_bud = type { i32, i32, i32, i64, i32, %struct.ubifs_bud*, i32 }
%struct.bud_entry = type { i32, i32, i32, i64, i32, %struct.bud_entry*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"add replay bud LEB %d:%d, head %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i64)* @add_replay_bud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_replay_bud(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ubifs_bud*, align 8
  %13 = alloca %struct.bud_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dbg_mnt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ubifs_bud* @kmalloc(i32 48, i32 %19)
  store %struct.ubifs_bud* %20, %struct.ubifs_bud** %12, align 8
  %21 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %22 = icmp ne %struct.ubifs_bud* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %90

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ubifs_bud* @kmalloc(i32 48, i32 %27)
  %29 = bitcast %struct.ubifs_bud* %28 to %struct.bud_entry*
  store %struct.bud_entry* %29, %struct.bud_entry** %13, align 8
  %30 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %31 = icmp ne %struct.bud_entry* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  br label %83

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %38 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %41 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %44 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %46 = call i32 @ubifs_hash_get_desc(%struct.ubifs_info* %45)
  %47 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %48 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %50 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %56 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %14, align 4
  br label %83

59:                                               ; preds = %35
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %65 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ubifs_shash_copy_state(%struct.ubifs_info* %60, i32 %63, i32 %66)
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %69 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %70 = call i32 @ubifs_add_bud(%struct.ubifs_info* %68, %struct.ubifs_bud* %69)
  %71 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %72 = bitcast %struct.ubifs_bud* %71 to %struct.bud_entry*
  %73 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %74 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %73, i32 0, i32 5
  store %struct.bud_entry* %72, %struct.bud_entry** %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %77 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %79 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %78, i32 0, i32 4
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 0
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  store i32 0, i32* %6, align 4
  br label %90

83:                                               ; preds = %54, %32
  %84 = load %struct.ubifs_bud*, %struct.ubifs_bud** %12, align 8
  %85 = call i32 @kfree(%struct.ubifs_bud* %84)
  %86 = load %struct.bud_entry*, %struct.bud_entry** %13, align 8
  %87 = bitcast %struct.bud_entry* %86 to %struct.ubifs_bud*
  %88 = call i32 @kfree(%struct.ubifs_bud* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %83, %59, %23
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @dbg_mnt(i8*, i32, i32, i32) #1

declare dso_local %struct.ubifs_bud* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_hash_get_desc(%struct.ubifs_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ubifs_shash_copy_state(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_add_bud(%struct.ubifs_info*, %struct.ubifs_bud*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_bud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
