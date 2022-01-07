; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_attr.c_setattr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_attr.c_setattr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_FORCE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@ATTR_KILL_PRIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setattr_prepare(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.iattr*, %struct.iattr** %5, align 8
  %13 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ATTR_SIZE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @inode_newsize_ok(%struct.inode* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ATTR_FORCE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %126

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ATTR_UID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @chown_ok(%struct.inode* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %140

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ATTR_GID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = load %struct.iattr*, %struct.iattr** %5, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @chgrp_ok(%struct.inode* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %140

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ATTR_MODE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @inode_owner_or_capable(%struct.inode* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %140

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ATTR_GID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.iattr*, %struct.iattr** %5, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i32 [ %86, %83 ], [ %90, %87 ]
  %93 = call i32 @in_group_p(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load i32, i32* @CAP_FSETID, align 4
  %98 = call i32 @capable_wrt_inode_uidgid(%struct.inode* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @S_ISGID, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.iattr*, %struct.iattr** %5, align 8
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %95, %91
  br label %108

108:                                              ; preds = %107, %66
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @ATTR_MTIME_SET, align 4
  %111 = load i32, i32* @ATTR_ATIME_SET, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ATTR_TIMES_SET, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = call i32 @inode_owner_or_capable(%struct.inode* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @EPERM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %140

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %35
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ATTR_KILL_PRIV, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.dentry*, %struct.dentry** %4, align 8
  %133 = call i32 @security_inode_killpriv(%struct.dentry* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %140

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %126
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %136, %121, %75, %63, %48, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i32 @chown_ok(%struct.inode*, i32) #1

declare dso_local i32 @chgrp_ok(%struct.inode*, i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @capable_wrt_inode_uidgid(%struct.inode*, i32) #1

declare dso_local i32 @security_inode_killpriv(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
