; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_inode_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@i_crtime = common dso_local global i32 0, align 4
@STATX_BTIME = common dso_local global i32 0, align 4
@EXT4_FL_USER_VISIBLE = common dso_local global i32 0, align 4
@EXT4_APPEND_FL = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@EXT4_COMPR_FL = common dso_local global i32 0, align 4
@STATX_ATTR_COMPRESSED = common dso_local global i32 0, align 4
@EXT4_ENCRYPT_FL = common dso_local global i32 0, align 4
@STATX_ATTR_ENCRYPTED = common dso_local global i32 0, align 4
@EXT4_IMMUTABLE_FL = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@EXT4_NODUMP_FL = common dso_local global i32 0, align 4
@STATX_ATTR_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_inode*, align 8
  %11 = alloca %struct.ext4_inode_info*, align 8
  %12 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.path*, %struct.path** %5, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @d_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %17)
  store %struct.ext4_inode_info* %18, %struct.ext4_inode_info** %11, align 8
  %19 = load %struct.ext4_inode*, %struct.ext4_inode** %10, align 8
  %20 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %21 = load i32, i32* @i_crtime, align 4
  %22 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %19, %struct.ext4_inode_info* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = load i32, i32* @STATX_BTIME, align 4
  %26 = load %struct.kstat*, %struct.kstat** %6, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %31 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kstat*, %struct.kstat** %6, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %38 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kstat*, %struct.kstat** %6, align 8
  %42 = getelementptr inbounds %struct.kstat, %struct.kstat* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %24, %4
  %45 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %46 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXT4_FL_USER_VISIBLE, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @EXT4_APPEND_FL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %56 = load %struct.kstat*, %struct.kstat** %6, align 8
  %57 = getelementptr inbounds %struct.kstat, %struct.kstat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %44
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @EXT4_COMPR_FL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %67 = load %struct.kstat*, %struct.kstat** %6, align 8
  %68 = getelementptr inbounds %struct.kstat, %struct.kstat* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @EXT4_ENCRYPT_FL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %78 = load %struct.kstat*, %struct.kstat** %6, align 8
  %79 = getelementptr inbounds %struct.kstat, %struct.kstat* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @EXT4_IMMUTABLE_FL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %89 = load %struct.kstat*, %struct.kstat** %6, align 8
  %90 = getelementptr inbounds %struct.kstat, %struct.kstat* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @EXT4_NODUMP_FL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %100 = load %struct.kstat*, %struct.kstat** %6, align 8
  %101 = getelementptr inbounds %struct.kstat, %struct.kstat* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %106 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.kstat*, %struct.kstat** %6, align 8
  %115 = getelementptr inbounds %struct.kstat, %struct.kstat* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = load %struct.kstat*, %struct.kstat** %6, align 8
  %120 = call i32 @generic_fillattr(%struct.inode* %118, %struct.kstat* %119)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
