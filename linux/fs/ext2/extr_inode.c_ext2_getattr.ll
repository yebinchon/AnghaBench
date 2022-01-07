; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { i32 }
%struct.ext2_inode_info = type { i32 }

@EXT2_FL_USER_VISIBLE = common dso_local global i32 0, align 4
@EXT2_APPEND_FL = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@EXT2_COMPR_FL = common dso_local global i32 0, align 4
@STATX_ATTR_COMPRESSED = common dso_local global i32 0, align 4
@EXT2_IMMUTABLE_FL = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@EXT2_NODUMP_FL = common dso_local global i32 0, align 4
@STATX_ATTR_NODUMP = common dso_local global i32 0, align 4
@STATX_ATTR_ENCRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext2_inode_info*, align 8
  %11 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inode* @d_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %16)
  store %struct.ext2_inode_info* %17, %struct.ext2_inode_info** %10, align 8
  %18 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %10, align 8
  %19 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXT2_FL_USER_VISIBLE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @EXT2_APPEND_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %29 = load %struct.kstat*, %struct.kstat** %6, align 8
  %30 = getelementptr inbounds %struct.kstat, %struct.kstat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EXT2_COMPR_FL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %40 = load %struct.kstat*, %struct.kstat** %6, align 8
  %41 = getelementptr inbounds %struct.kstat, %struct.kstat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @EXT2_IMMUTABLE_FL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %51 = load %struct.kstat*, %struct.kstat** %6, align 8
  %52 = getelementptr inbounds %struct.kstat, %struct.kstat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @EXT2_NODUMP_FL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %62 = load %struct.kstat*, %struct.kstat** %6, align 8
  %63 = getelementptr inbounds %struct.kstat, %struct.kstat* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %68 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.kstat*, %struct.kstat** %6, align 8
  %77 = getelementptr inbounds %struct.kstat, %struct.kstat* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = load %struct.kstat*, %struct.kstat** %6, align 8
  %82 = call i32 @generic_fillattr(%struct.inode* %80, %struct.kstat* %81)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
