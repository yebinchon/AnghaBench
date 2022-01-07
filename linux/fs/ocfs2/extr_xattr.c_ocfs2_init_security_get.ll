; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_security_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_security_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.ocfs2_security_xattr_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ocfs2_initxattrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_security_get(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, %struct.ocfs2_security_xattr_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.ocfs2_security_xattr_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.ocfs2_security_xattr_info* %3, %struct.ocfs2_security_xattr_info** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @OCFS2_SB(i32 %12)
  %14 = call i32 @ocfs2_supports_xattr(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %9, align 8
  %21 = icmp ne %struct.ocfs2_security_xattr_info* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.qstr*, %struct.qstr** %8, align 8
  %26 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %26, i32 0, i32 2
  %28 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %28, i32 0, i32 1
  %30 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %9, align 8
  %31 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %30, i32 0, i32 0
  %32 = call i32 @security_old_inode_init_security(%struct.inode* %23, %struct.inode* %24, %struct.qstr* %25, i32* %27, i32* %29, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.qstr*, %struct.qstr** %8, align 8
  %37 = call i32 @security_inode_init_security(%struct.inode* %34, %struct.inode* %35, %struct.qstr* %36, i32* @ocfs2_initxattrs, i32* null)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %22, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @security_old_inode_init_security(%struct.inode*, %struct.inode*, %struct.qstr*, i32*, i32*, i32*) #1

declare dso_local i32 @security_inode_init_security(%struct.inode*, %struct.inode*, %struct.qstr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
