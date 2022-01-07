; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_init_slot_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_init_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_slot_info*, i32 }
%struct.ocfs2_slot_info = type { %struct.inode*, i32, i32 }
%struct.inode = type { i32 }

@si_slots = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLOT_MAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_slot_info(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %7 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %8 = load i32, i32* @si_slots, align 4
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @struct_size(%struct.ocfs2_slot_info* %7, i32 %8, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ocfs2_slot_info* @kzalloc(i32 %12, i32 %13)
  store %struct.ocfs2_slot_info* %14, %struct.ocfs2_slot_info** %6, align 8
  %15 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %16 = icmp ne %struct.ocfs2_slot_info* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mlog_errno(i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = call i32 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super* %24)
  %26 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %34 = load i32, i32* @SLOT_MAP_SYSTEM_INODE, align 4
  %35 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %36 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %33, i32 %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %5, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %60

44:                                               ; preds = %23
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %46, i32 0, i32 0
  store %struct.inode* %45, %struct.inode** %47, align 8
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %50 = call i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super* %48, %struct.ocfs2_slot_info* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  store %struct.ocfs2_slot_info* %57, %struct.ocfs2_slot_info** %59, align 8
  br label %60

60:                                               ; preds = %56, %53, %39
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %6, align 8
  %65 = call i32 @__ocfs2_free_slot_info(%struct.ocfs2_slot_info* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ocfs2_slot_info* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ocfs2_slot_info*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super*, %struct.ocfs2_slot_info*) #1

declare dso_local i32 @__ocfs2_free_slot_info(%struct.ocfs2_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
