; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }
%union.ubifs_key = type { i32 }
%struct.replay_entry = type { i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"add LEB %d:%d, key \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i32*, %union.ubifs_key*, i64, i32, i32*, i8*, i8*)* @insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_node(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32* %4, %union.ubifs_key* %5, i64 %6, i32 %7, i32* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %union.ubifs_key*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.replay_entry*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store %union.ubifs_key* %5, %union.ubifs_key** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %25 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @dbg_mntk(%union.ubifs_key* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %30 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %31 = call i64 @key_inum(%struct.ubifs_info* %29, %union.ubifs_key* %30)
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %11
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %38 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %39 = call i64 @key_inum(%struct.ubifs_info* %37, %union.ubifs_key* %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %11
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.replay_entry* @kzalloc(i32 56, i32 %43)
  store %struct.replay_entry* %44, %struct.replay_entry** %24, align 8
  %45 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %46 = icmp ne %struct.replay_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %103

50:                                               ; preds = %42
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @ALIGN(i32 %54, i32 8)
  %56 = load i32*, i32** %21, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %55
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %64 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %67 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %70 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %74 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %71, i32* %72, i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %83 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* %19, align 8
  %85 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %86 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %88 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %89 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %90 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %89, i32 0, i32 8
  %91 = call i32 @key_copy(%struct.ubifs_info* %87, %union.ubifs_key* %88, i32* %90)
  %92 = load i8*, i8** %22, align 8
  %93 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %94 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %97 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load %struct.replay_entry*, %struct.replay_entry** %24, align 8
  %99 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %98, i32 0, i32 5
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 1
  %102 = call i32 @list_add_tail(i32* %99, i32* %101)
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %61, %47
  %104 = load i32, i32* %12, align 4
  ret i32 %104
}

declare dso_local i32 @dbg_mntk(%union.ubifs_key*, i8*, i32, i32) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local %struct.replay_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i32 @key_copy(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
