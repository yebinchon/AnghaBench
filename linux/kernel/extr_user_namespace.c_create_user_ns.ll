; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_create_user_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_create_user_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, %struct.user_namespace* }
%struct.user_namespace = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.ucounts*, i32*, i32, i32, i32, %struct.user_namespace*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ucounts = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@user_ns_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@userns_operations = common dso_local global i32 0, align 4
@free_user_ns = common dso_local global i32 0, align 4
@UCOUNT_COUNTS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@userns_state_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_user_ns(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucounts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  %11 = load %struct.cred*, %struct.cred** %3, align 8
  %12 = getelementptr inbounds %struct.cred, %struct.cred* %11, i32 0, i32 2
  %13 = load %struct.user_namespace*, %struct.user_namespace** %12, align 8
  store %struct.user_namespace* %13, %struct.user_namespace** %5, align 8
  %14 = load %struct.cred*, %struct.cred** %3, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cred*, %struct.cred** %3, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %23 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %142

27:                                               ; preds = %1
  %28 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.ucounts* @inc_user_namespaces(%struct.user_namespace* %28, i32 %29)
  store %struct.ucounts* %30, %struct.ucounts** %8, align 8
  %31 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %32 = icmp ne %struct.ucounts* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %142

34:                                               ; preds = %27
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = call i64 (...) @current_chrooted()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %139

40:                                               ; preds = %34
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @kuid_has_mapping(%struct.user_namespace* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @kgid_has_mapping(%struct.user_namespace* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %40
  br label %139

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @user_ns_cachep, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.user_namespace* @kmem_cache_zalloc(i32 %56, i32 %57)
  store %struct.user_namespace* %58, %struct.user_namespace** %4, align 8
  %59 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %60 = icmp ne %struct.user_namespace* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %139

62:                                               ; preds = %53
  %63 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %64 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %63, i32 0, i32 1
  %65 = call i32 @ns_alloc_inum(%struct.TYPE_3__* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %135

69:                                               ; preds = %62
  %70 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %71 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32* @userns_operations, i32** %72, align 8
  %73 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %74 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %73, i32 0, i32 12
  %75 = call i32 @atomic_set(i32* %74, i32 1)
  %76 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %77 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %78 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %77, i32 0, i32 11
  store %struct.user_namespace* %76, %struct.user_namespace** %78, align 8
  %79 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %80 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %84 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %87 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %90 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %92 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %91, i32 0, i32 8
  %93 = load i32, i32* @free_user_ns, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %107, %69
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @UCOUNT_COUNTS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* @INT_MAX, align 4
  %101 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %102 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %112 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %113 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %112, i32 0, i32 6
  store %struct.ucounts* %111, %struct.ucounts** %113, align 8
  %114 = call i32 @mutex_lock(i32* @userns_state_mutex)
  %115 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %116 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %119 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = call i32 @mutex_unlock(i32* @userns_state_mutex)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  %123 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %124 = call i32 @setup_userns_sysctls(%struct.user_namespace* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %110
  br label %131

127:                                              ; preds = %110
  %128 = load %struct.cred*, %struct.cred** %3, align 8
  %129 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %130 = call i32 @set_cred_user_ns(%struct.cred* %128, %struct.user_namespace* %129)
  store i32 0, i32* %2, align 4
  br label %144

131:                                              ; preds = %126
  %132 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %133 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %132, i32 0, i32 1
  %134 = call i32 @ns_free_inum(%struct.TYPE_3__* %133)
  br label %135

135:                                              ; preds = %131, %68
  %136 = load i32, i32* @user_ns_cachep, align 4
  %137 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %138 = call i32 @kmem_cache_free(i32 %136, %struct.user_namespace* %137)
  br label %139

139:                                              ; preds = %135, %61, %52, %39
  %140 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %141 = call i32 @dec_user_namespaces(%struct.ucounts* %140)
  br label %142

142:                                              ; preds = %139, %33, %26
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %127
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.ucounts* @inc_user_namespaces(%struct.user_namespace*, i32) #1

declare dso_local i64 @current_chrooted(...) #1

declare dso_local i32 @kuid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local i32 @kgid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local %struct.user_namespace* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @ns_alloc_inum(%struct.TYPE_3__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @setup_userns_sysctls(%struct.user_namespace*) #1

declare dso_local i32 @set_cred_user_ns(%struct.cred*, %struct.user_namespace*) #1

declare dso_local i32 @ns_free_inum(%struct.TYPE_3__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.user_namespace*) #1

declare dso_local i32 @dec_user_namespaces(%struct.ucounts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
