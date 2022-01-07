; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_vfs_ioc_fssetxattr_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_vfs_ioc_fssetxattr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fsxattr = type { i32, i64, i64, i64 }

@FS_XFLAG_IMMUTABLE = common dso_local global i32 0, align 4
@FS_XFLAG_APPEND = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FS_XFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@FS_XFLAG_EXTSIZE = common dso_local global i32 0, align 4
@FS_XFLAG_EXTSZINHERIT = common dso_local global i32 0, align 4
@FS_XFLAG_COWEXTSIZE = common dso_local global i32 0, align 4
@FS_XFLAG_DAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_ioc_fssetxattr_check(%struct.inode* %0, %struct.fsxattr* %1, %struct.fsxattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fsxattr*, align 8
  %7 = alloca %struct.fsxattr*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fsxattr* %1, %struct.fsxattr** %6, align 8
  store %struct.fsxattr* %2, %struct.fsxattr** %7, align 8
  %8 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %9 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %12 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = xor i32 %10, %13
  %15 = load i32, i32* @FS_XFLAG_IMMUTABLE, align 4
  %16 = load i32, i32* @FS_XFLAG_APPEND, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %159

27:                                               ; preds = %20, %3
  %28 = call i32* (...) @current_user_ns()
  %29 = icmp ne i32* %28, @init_user_ns
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %32 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %35 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %159

41:                                               ; preds = %30
  %42 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %43 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %46 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %44, %47
  %49 = load i32, i32* @FS_XFLAG_PROJINHERIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %159

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %58 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FS_XFLAG_EXTSIZE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISREG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %159

72:                                               ; preds = %63, %56
  %73 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %74 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FS_XFLAG_EXTSZINHERIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISDIR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %159

88:                                               ; preds = %79, %72
  %89 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %90 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FS_XFLAG_COWEXTSIZE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @S_ISREG(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @S_ISDIR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %159

110:                                              ; preds = %101, %95, %88
  %111 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %112 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FS_XFLAG_DAX, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %110
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @S_ISREG(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %117
  %124 = load %struct.inode*, %struct.inode** %5, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @S_ISDIR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %159

132:                                              ; preds = %123, %117, %110
  %133 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %134 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* @FS_XFLAG_EXTSIZE, align 4
  %139 = load i32, i32* @FS_XFLAG_EXTSZINHERIT, align 4
  %140 = or i32 %138, %139
  %141 = xor i32 %140, -1
  %142 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %143 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %137, %132
  %147 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %148 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* @FS_XFLAG_COWEXTSIZE, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.fsxattr*, %struct.fsxattr** %7, align 8
  %155 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %146
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %129, %107, %85, %69, %52, %38, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32* @current_user_ns(...) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
