; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ocfs2_inode_info = type { i64, i32, i32 }

@OCFS2_MAX_FILENAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OCFS2_INODE_MAYBE_ORPHANED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @ocfs2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @trace_ocfs2_lookup(%struct.inode* %12, %struct.dentry* %13, i64 %17, i32 %21, i64 %25, i32 0)
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OCFS2_MAX_FILENAME_LEN, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %10, align 8
  br label %132

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i32, i32* @OI_LS_PARENT, align 4
  %40 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %38, i32* null, i32 0, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %7, align 4
  %53 = call %struct.dentry* @ERR_PTR(i32 %52)
  store %struct.dentry* %53, %struct.dentry** %10, align 8
  br label %132

54:                                               ; preds = %37
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %55, i32 %59, i64 %63, i32* %8)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %97

68:                                               ; preds = %54
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @OCFS2_SB(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.inode* @ocfs2_iget(i32 %72, i32 %73, i32 0, i32 0)
  store %struct.inode* %74, %struct.inode** %9, align 8
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i64 @IS_ERR(%struct.inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.dentry* @ERR_PTR(i32 %80)
  store %struct.dentry* %81, %struct.dentry** %10, align 8
  br label %129

82:                                               ; preds = %68
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %83)
  store %struct.ocfs2_inode_info* %84, %struct.ocfs2_inode_info** %11, align 8
  %85 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %86 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %85, i32 0, i32 1
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load i32, i32* @OCFS2_INODE_MAYBE_ORPHANED, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %91 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %95 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  br label %97

97:                                               ; preds = %82, %67
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = call %struct.dentry* @d_splice_alias(%struct.inode* %98, %struct.dentry* %99)
  store %struct.dentry* %100, %struct.dentry** %10, align 8
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = icmp ne %struct.inode* %101, null
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = load %struct.dentry*, %struct.dentry** %10, align 8
  %105 = call i32 @IS_ERR_OR_NULL(%struct.dentry* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %108, %struct.dentry** %5, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load %struct.dentry*, %struct.dentry** %5, align 8
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %110, %struct.inode* %111, i64 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = call %struct.dentry* @ERR_PTR(i32 %122)
  store %struct.dentry* %123, %struct.dentry** %10, align 8
  br label %129

124:                                              ; preds = %109
  br label %128

125:                                              ; preds = %97
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  %127 = call i32 @ocfs2_dentry_attach_gen(%struct.dentry* %126)
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %119, %78
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = call i32 @ocfs2_inode_unlock(%struct.inode* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %51, %33
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = call i32 @trace_ocfs2_lookup_ret(%struct.dentry* %133)
  %135 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %135
}

declare dso_local i32 @trace_ocfs2_lookup(%struct.inode*, %struct.dentry*, i64, i32, i64, i32) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i32, i64, i32*) #1

declare dso_local %struct.inode* @ocfs2_iget(i32, i32, i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i64) #1

declare dso_local i32 @ocfs2_dentry_attach_gen(%struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @trace_ocfs2_lookup_ret(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
