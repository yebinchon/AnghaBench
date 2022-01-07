; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c___orangefs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c___orangefs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@GOSSIP_UTILS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"User attempted to set sticky bit on non-root directory; returning EINVAL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Attempting to set setuid bit (not supported); returning EINVAL.\0A\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__orangefs_setattr(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %6 = load %struct.iattr*, %struct.iattr** %4, align 8
  %7 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATTR_MODE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.iattr*, %struct.iattr** %4, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @S_ISVTX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i64 @is_root_handle(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @S_ISVTX, align 4
  %25 = load %struct.iattr*, %struct.iattr** %4, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %31 = call i32 @gossip_debug(i32 %30, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %140

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.iattr*, %struct.iattr** %4, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S_ISUID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %44 = call i32 @gossip_debug(i32 %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %140

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.iattr*, %struct.iattr** %4, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATTR_SIZE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load %struct.iattr*, %struct.iattr** %4, align 8
  %58 = call i32 @orangefs_setattr_size(%struct.inode* %56, %struct.iattr* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %140

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %96, %63
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %64
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (...) @current_fsuid()
  %79 = call i64 @uid_eq(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (...) @current_fsgid()
  %87 = call i64 @gid_eq(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.iattr*, %struct.iattr** %4, align 8
  %91 = getelementptr inbounds %struct.iattr, %struct.iattr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %102

96:                                               ; preds = %81, %73
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @write_inode_now(%struct.inode* %100, i32 1)
  br label %64

102:                                              ; preds = %89
  br label %118

103:                                              ; preds = %64
  %104 = load %struct.iattr*, %struct.iattr** %4, align 8
  %105 = getelementptr inbounds %struct.iattr, %struct.iattr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.inode*, %struct.inode** %3, align 8
  %108 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = call i32 (...) @current_fsuid()
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  %112 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = call i32 (...) @current_fsgid()
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %103, %102
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = load %struct.iattr*, %struct.iattr** %4, align 8
  %121 = call i32 @setattr_copy(%struct.inode* %119, %struct.iattr* %120)
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.inode*, %struct.inode** %3, align 8
  %126 = call i32 @mark_inode_dirty(%struct.inode* %125)
  %127 = load %struct.iattr*, %struct.iattr** %4, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ATTR_MODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %118
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @posix_acl_chmod(%struct.inode* %134, i32 %137)
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %133, %118
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %61, %42, %29
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i64 @is_root_handle(%struct.inode*) #1

declare dso_local i32 @gossip_debug(i32, i8*) #1

declare dso_local i32 @orangefs_setattr_size(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
