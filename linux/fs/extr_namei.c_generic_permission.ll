; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_generic_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_generic_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@CAP_DAC_READ_SEARCH = common dso_local global i32 0, align 4
@CAP_DAC_OVERRIDE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @acl_permission_check(%struct.inode* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EACCES, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISDIR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAY_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load i32, i32* @CAP_DAC_READ_SEARCH, align 4
  %30 = call i64 @capable_wrt_inode_uidgid(%struct.inode* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %83

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %37 = call i64 @capable_wrt_inode_uidgid(%struct.inode* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %83

40:                                               ; preds = %34
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %83

43:                                               ; preds = %16
  %44 = load i32, i32* @MAY_READ, align 4
  %45 = load i32, i32* @MAY_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAY_EXEC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAY_READ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i32, i32* @CAP_DAC_READ_SEARCH, align 4
  %57 = call i64 @capable_wrt_inode_uidgid(%struct.inode* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %83

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MAY_EXEC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @S_IXUGO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66, %61
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %76 = call i64 @capable_wrt_inode_uidgid(%struct.inode* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* @EACCES, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %78, %59, %40, %39, %32, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @acl_permission_check(%struct.inode*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @capable_wrt_inode_uidgid(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
