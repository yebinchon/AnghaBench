; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_getprocattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_getprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.task_security_struct = type { i32, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__GETATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fscreate\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"keycreate\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sockcreate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, i8**)* @selinux_getprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_getprocattr(%struct.task_struct* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call i32 @__task_cred(%struct.task_struct* %13)
  %15 = call %struct.task_security_struct* @selinux_cred(i32 %14)
  store %struct.task_security_struct* %15, %struct.task_security_struct** %8, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = icmp ne %struct.task_struct* %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = call i32 (...) @current_sid()
  %21 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %22 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SECCLASS_PROCESS, align 4
  %25 = load i32, i32* @PROCESS__GETATTR, align 4
  %26 = call i32 @avc_has_perm(i32* @selinux_state, i32 %20, i32 %23, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %102

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %37 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %87

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %45 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  br label %86

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %53 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %85

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %61 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %84

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %69 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  br label %83

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %77 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %102

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %43
  br label %87

87:                                               ; preds = %86, %35
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %105

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load i8**, i8*** %7, align 8
  %95 = call i32 @security_sid_to_context(i32* @selinux_state, i32 %93, i8** %94, i32* %11)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %105

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %105

102:                                              ; preds = %79, %29
  %103 = call i32 (...) @rcu_read_unlock()
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %100, %98, %91
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_sid_to_context(i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
