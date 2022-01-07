; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c_xattr_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c_xattr_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@MAY_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32)* @xattr_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_permission(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAY_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @IS_IMMUTABLE(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i64 @IS_APPEND(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %129

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call i64 @HAS_UNMAPPED_ID(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %129

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %34 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %35 = call i32 @strncmp(i8* %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %40 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %41 = call i32 @strncmp(i8* %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %31
  store i32 0, i32* %4, align 4
  br label %129

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %47 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  %48 = call i32 @strncmp(i8* %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %52 = call i32 @capable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAY_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  br label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @ENODATA, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  store i32 %66, i32* %4, align 4
  br label %129

67:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %129

68:                                               ; preds = %44
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %71 = load i32, i32* @XATTR_USER_PREFIX_LEN, align 4
  %72 = call i32 @strncmp(i8* %69, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %125, label %74

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @S_ISREG(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @S_ISDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MAY_WRITE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @ENODATA, align 4
  %96 = sub nsw i32 0, %95
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %93, %91 ], [ %96, %94 ]
  store i32 %98, i32* %4, align 4
  br label %129

99:                                               ; preds = %80, %74
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @S_ISDIR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @S_ISVTX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MAY_WRITE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @inode_owner_or_capable(%struct.inode* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @EPERM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %129

124:                                              ; preds = %117, %112, %105, %99
  br label %125

125:                                              ; preds = %124, %68
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @inode_permission(%struct.inode* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %121, %97, %67, %65, %43, %27, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @HAS_UNMAPPED_ID(%struct.inode*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
