; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_perms.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ORANGEFS_sys_attr_s = type { i32 }

@ORANGEFS_O_EXECUTE = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ORANGEFS_O_WRITE = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@ORANGEFS_O_READ = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@ORANGEFS_G_EXECUTE = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@ORANGEFS_G_WRITE = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@ORANGEFS_G_READ = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@ORANGEFS_U_EXECUTE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@ORANGEFS_U_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ORANGEFS_U_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ORANGEFS_G_SGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ORANGEFS_U_SUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ORANGEFS_sys_attr_s*)* @orangefs_inode_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_inode_perms(%struct.ORANGEFS_sys_attr_s* %0) #0 {
  %2 = alloca %struct.ORANGEFS_sys_attr_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ORANGEFS_sys_attr_s* %0, %struct.ORANGEFS_sys_attr_s** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %5 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ORANGEFS_O_EXECUTE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @S_IXOTH, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %16 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ORANGEFS_O_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @S_IWOTH, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %27 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ORANGEFS_O_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @S_IROTH, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %38 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ORANGEFS_G_EXECUTE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @S_IXGRP, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %49 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ORANGEFS_G_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @S_IWGRP, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %60 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ORANGEFS_G_READ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @S_IRGRP, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %71 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ORANGEFS_U_EXECUTE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @S_IXUSR, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %82 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ORANGEFS_U_WRITE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @S_IWUSR, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %93 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ORANGEFS_U_READ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @S_IRUSR, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %104 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ORANGEFS_G_SGID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @S_ISGID, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %102
  %114 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %115 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ORANGEFS_U_SUID, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* @S_ISUID, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
