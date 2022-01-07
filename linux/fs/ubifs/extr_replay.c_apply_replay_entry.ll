; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_apply_replay_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_apply_replay_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.replay_entry = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"LEB %d:%d len %d deletion %d sqnum %llu key \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.replay_entry*)* @apply_replay_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_replay_entry(%struct.ubifs_info* %0, %struct.replay_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.replay_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.replay_entry* %1, %struct.replay_entry** %5, align 8
  %8 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %9 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %8, i32 0, i32 2
  %10 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %11 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %14 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %17 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %20 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %23 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dbg_mntk(i32* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i64 %21, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %28 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %27, i32 0, i32 2
  %29 = call i64 @is_hash_key(%struct.ubifs_info* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %33 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %39 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %38, i32 0, i32 2
  %40 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %41 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %40, i32 0, i32 7
  %42 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %37, i32* %39, i32* %41)
  store i32 %42, i32* %6, align 4
  br label %62

43:                                               ; preds = %31
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %45 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %46 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %45, i32 0, i32 2
  %47 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %48 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %51 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %54 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %57 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %60 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %59, i32 0, i32 7
  %61 = call i32 @ubifs_tnc_add_nm(%struct.ubifs_info* %44, i32* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %43, %36
  br label %136

63:                                               ; preds = %2
  %64 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %65 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %63
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %70 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %71 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %70, i32 0, i32 2
  %72 = call i32 @key_type(%struct.ubifs_info* %69, i32* %71)
  switch i32 %72, label %91 [
    i32 129, label %73
    i32 128, label %87
  ]

73:                                               ; preds = %68
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %75 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %76 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %75, i32 0, i32 2
  %77 = call i32 @key_inum(%struct.ubifs_info* %74, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %80 = call i32 @inode_still_linked(%struct.ubifs_info* %78, %struct.replay_entry* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %96

83:                                               ; preds = %73
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %96

87:                                               ; preds = %68
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %90 = call i32 @trun_remove_range(%struct.ubifs_info* %88, %struct.replay_entry* %89)
  store i32 %90, i32* %6, align 4
  br label %96

91:                                               ; preds = %68
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %93 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %94 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %93, i32 0, i32 2
  %95 = call i32 @ubifs_tnc_remove(%struct.ubifs_info* %92, i32* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91, %87, %83, %82
  br label %114

97:                                               ; preds = %63
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %100 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %99, i32 0, i32 2
  %101 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %102 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %105 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %108 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %111 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %98, i32* %100, i32 %103, i32 %106, i32 %109, i32 %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %97, %96
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %138

119:                                              ; preds = %114
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %126 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %127 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %126, i32 0, i32 2
  %128 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %129 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %132 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ubifs_recover_size_accum(%struct.ubifs_info* %125, i32* %127, i64 %130, i32 %133)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %124, %119
  br label %136

136:                                              ; preds = %135, %62
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %117
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @dbg_mntk(i32*, i8*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i32 @ubifs_tnc_add_nm(%struct.ubifs_info*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @key_inum(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @inode_still_linked(%struct.ubifs_info*, %struct.replay_entry*) #1

declare dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @trun_remove_range(%struct.ubifs_info*, %struct.replay_entry*) #1

declare dso_local i32 @ubifs_tnc_remove(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_recover_size_accum(%struct.ubifs_info*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
