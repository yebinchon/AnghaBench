; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_may_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_may_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.cred = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PTRACE_MODE_FSCREDS = common dso_local global i32 0, align 4
@PTRACE_MODE_REALCREDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"denying ptrace access check without PTRACE_MODE_*CREDS\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SUID_DUMP_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @__ptrace_may_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ptrace_may_access(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %11, %struct.cred** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PTRACE_MODE_FSCREDS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PTRACE_MODE_REALCREDS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %139

29:                                               ; preds = %2
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load i32, i32* @current, align 4
  %32 = call i64 @same_thread_group(%struct.task_struct* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %139

35:                                               ; preds = %29
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PTRACE_MODE_FSCREDS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.cred*, %struct.cred** %6, align 8
  %43 = getelementptr inbounds %struct.cred, %struct.cred* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.cred*, %struct.cred** %6, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load %struct.cred*, %struct.cred** %6, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.cred*, %struct.cred** %6, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %57 = call %struct.cred* @__task_cred(%struct.task_struct* %56)
  store %struct.cred* %57, %struct.cred** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.cred*, %struct.cred** %7, align 8
  %60 = getelementptr inbounds %struct.cred, %struct.cred* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @uid_eq(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.cred*, %struct.cred** %7, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @uid_eq(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.cred*, %struct.cred** %7, align 8
  %74 = getelementptr inbounds %struct.cred, %struct.cred* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @uid_eq(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.cred*, %struct.cred** %7, align 8
  %81 = getelementptr inbounds %struct.cred, %struct.cred* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @gid_eq(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.cred*, %struct.cred** %7, align 8
  %88 = getelementptr inbounds %struct.cred, %struct.cred* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @gid_eq(i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.cred*, %struct.cred** %7, align 8
  %95 = getelementptr inbounds %struct.cred, %struct.cred* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @gid_eq(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %112

100:                                              ; preds = %92, %85, %78, %71, %64, %55
  %101 = load %struct.cred*, %struct.cred** %7, align 8
  %102 = getelementptr inbounds %struct.cred, %struct.cred* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @ptrace_has_cap(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %112

108:                                              ; preds = %100
  %109 = call i32 (...) @rcu_read_unlock()
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %139

112:                                              ; preds = %107, %99
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = call i32 (...) @smp_rmb()
  %115 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %116 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %115, i32 0, i32 0
  %117 = load %struct.mm_struct*, %struct.mm_struct** %116, align 8
  store %struct.mm_struct* %117, %struct.mm_struct** %8, align 8
  %118 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %119 = icmp ne %struct.mm_struct* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %122 = call i64 @get_dumpable(%struct.mm_struct* %121)
  %123 = load i64, i64* @SUID_DUMP_USER, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %127 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @ptrace_has_cap(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @EPERM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %139

135:                                              ; preds = %125, %120, %112
  %136 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @security_ptrace_access_check(%struct.task_struct* %136, i32 %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %132, %108, %34, %25
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i64 @ptrace_has_cap(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @get_dumpable(%struct.mm_struct*) #1

declare dso_local i32 @security_ptrace_access_check(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
