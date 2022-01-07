; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_write_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_write_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.jfs_inode_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@INLINEEA = common dso_local global i32 0, align 4
@DXD_INLINE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.jfs_ea_list*, i32, %struct.TYPE_8__*)* @ea_write_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_write_inline(%struct.inode* %0, %struct.jfs_ea_list* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.jfs_ea_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.jfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.jfs_ea_list* %1, %struct.jfs_ea_list** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %11)
  store %struct.jfs_inode_info* %12, %struct.jfs_inode_info** %10, align 8
  %13 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %7, align 8
  %14 = icmp ne %struct.jfs_ea_list* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ule i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %26 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INLINEEA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %19
  %32 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %33 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DXD_INLINE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %89

42:                                               ; preds = %31, %19
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @DXDsize(%struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = call i32 @DXDlength(%struct.TYPE_8__* %46, i32 0)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = call i32 @DXDaddress(%struct.TYPE_8__* %48, i32 0)
  %50 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %51 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @memcpy(i32 %52, %struct.jfs_ea_list* %53, i32 %54)
  %56 = load i32, i32* @DXD_INLINE, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @INLINEEA, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %62 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %88

65:                                               ; preds = %15, %4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = call i32 @DXDsize(%struct.TYPE_8__* %68, i32 0)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = call i32 @DXDlength(%struct.TYPE_8__* %70, i32 0)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = call i32 @DXDaddress(%struct.TYPE_8__* %72, i32 0)
  %74 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %75 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DXD_INLINE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %65
  %82 = load i32, i32* @INLINEEA, align 4
  %83 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %84 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %65
  br label %88

88:                                               ; preds = %87, %42
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %39
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DXDsize(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DXDlength(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DXDaddress(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.jfs_ea_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
