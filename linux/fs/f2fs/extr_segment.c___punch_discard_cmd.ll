; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___punch_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___punch_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd = type { i64, i32, i32, i32, i32, %struct.discard_info }
%struct.discard_info = type { i32, i32, i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@D_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.discard_cmd*, i32)* @__punch_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__punch_discard_cmd(%struct.f2fs_sb_info* %0, %struct.discard_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.discard_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.discard_cmd_control*, align 8
  %8 = alloca %struct.discard_info, align 4
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.discard_cmd* %1, %struct.discard_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %12, align 8
  store %struct.discard_cmd_control* %13, %struct.discard_cmd_control** %7, align 8
  %14 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %14, i32 0, i32 5
  %16 = bitcast %struct.discard_info* %8 to i8*
  %17 = bitcast %struct.discard_info* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %17, i64 12, i1 false)
  store i32 0, i32* %9, align 4
  %18 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @D_DONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %3
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %30 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %31 = call i32 @__remove_discard_cmd(%struct.f2fs_sb_info* %29, %struct.discard_cmd* %30)
  br label %121

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  %36 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  %55 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  %59 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %60 = call i32 @__relocate_discard_cmd(%struct.discard_cmd_control* %58, %struct.discard_cmd* %59)
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %43, %32
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %62, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %75 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %84, %86
  %88 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.discard_info, %struct.discard_info* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %89, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @__insert_discard_tree(%struct.f2fs_sb_info* %74, i32 %77, i32 %79, i32 %87, i32 %95, i32* null, i32* null)
  br label %120

97:                                               ; preds = %70
  %98 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %111 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  %114 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  %118 = load %struct.discard_cmd*, %struct.discard_cmd** %5, align 8
  %119 = call i32 @__relocate_discard_cmd(%struct.discard_cmd_control* %117, %struct.discard_cmd* %118)
  br label %120

120:                                              ; preds = %97, %73
  br label %121

121:                                              ; preds = %28, %120, %61
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__remove_discard_cmd(%struct.f2fs_sb_info*, %struct.discard_cmd*) #1

declare dso_local i32 @__relocate_discard_cmd(%struct.discard_cmd_control*, %struct.discard_cmd*) #1

declare dso_local i32 @__insert_discard_tree(%struct.f2fs_sb_info*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
