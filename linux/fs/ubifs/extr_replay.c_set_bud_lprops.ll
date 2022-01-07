; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_set_bud_lprops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_set_bud_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bud_entry = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ubifs_lprops = type { i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"bud LEB %d was GC'd (%d free, %d dirty)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"LEB %d lp: %d free %d dirty replay: %d free %d dirty\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.bud_entry*)* @set_bud_lprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bud_lprops(%struct.ubifs_info* %0, %struct.bud_entry* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.bud_entry*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.bud_entry* %1, %struct.bud_entry** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %12 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %10, i32 %15)
  store %struct.ubifs_lprops* %16, %struct.ubifs_lprops** %5, align 8
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %18 = call i64 @IS_ERR(%struct.ubifs_lprops* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.ubifs_lprops* %21)
  store i32 %22, i32* %6, align 4
  br label %151

23:                                               ; preds = %2
  %24 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %28 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %104

33:                                               ; preds = %23
  %34 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %41, %33
  %47 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %48 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %56 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, i64, i32, ...) @dbg_mnt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54, i32 %57)
  %59 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %60 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dbg_gc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %66, i32 %69)
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %75 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %46
  %85 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %86 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %91 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %94 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %97 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %100 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, i64, i32, ...) @dbg_mnt(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %92, i32 %95, i64 %98, i32 %101)
  br label %103

103:                                              ; preds = %84, %46
  br label %104

104:                                              ; preds = %103, %41, %23
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %106 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %107 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %108 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %112 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %110, %113
  %115 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %116 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @LPROPS_TAKEN, align 4
  %119 = or i32 %117, %118
  %120 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %105, %struct.ubifs_lprops* %106, i64 %109, i32 %114, i32 %119, i32 0)
  store %struct.ubifs_lprops* %120, %struct.ubifs_lprops** %5, align 8
  %121 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %122 = call i64 @IS_ERR(%struct.ubifs_lprops* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %104
  %125 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %126 = call i32 @PTR_ERR(%struct.ubifs_lprops* %125)
  store i32 %126, i32* %6, align 4
  br label %151

127:                                              ; preds = %104
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %132 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %139 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.bud_entry*, %struct.bud_entry** %4, align 8
  %147 = getelementptr inbounds %struct.bud_entry, %struct.bud_entry* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %145, %148
  %150 = call i32 @ubifs_wbuf_seek_nolock(i32* %137, i32 %142, i64 %149)
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %127, %124, %20
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %153 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %152)
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @dbg_mnt(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @dbg_gc(i8*, i32, i64, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i64, i32, i32, i32) #1

declare dso_local i32 @ubifs_wbuf_seek_nolock(i32*, i32, i64) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
