; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32, %struct.audit_context*, i32 }
%struct.audit_context = type { i32 }

@audit_buffer_cache = common dso_local global i32 0, align 4
@AUDIT_BUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_buffer* (%struct.audit_context*, i32, i32)* @audit_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_buffer* @audit_buffer_alloc(%struct.audit_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca %struct.audit_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.audit_buffer*, align 8
  store %struct.audit_context* %0, %struct.audit_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @audit_buffer_cache, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.audit_buffer* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.audit_buffer* %11, %struct.audit_buffer** %8, align 8
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %13 = icmp ne %struct.audit_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.audit_buffer* null, %struct.audit_buffer** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load i32, i32* @AUDIT_BUFSIZ, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nlmsg_new(i32 %16, i32 %17)
  %19 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %20 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %22 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %42

26:                                               ; preds = %15
  %27 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nlmsg_put(i32 %29, i32 0, i32 0, i32 %30, i32 0, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %26
  %35 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %36, i32 0, i32 1
  store %struct.audit_context* %35, %struct.audit_context** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %40 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  store %struct.audit_buffer* %41, %struct.audit_buffer** %4, align 8
  br label %45

42:                                               ; preds = %33, %25
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %8, align 8
  %44 = call i32 @audit_buffer_free(%struct.audit_buffer* %43)
  store %struct.audit_buffer* null, %struct.audit_buffer** %4, align 8
  br label %45

45:                                               ; preds = %42, %34, %14
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  ret %struct.audit_buffer* %46
}

declare dso_local %struct.audit_buffer* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @nlmsg_new(i32, i32) #1

declare dso_local i32 @nlmsg_put(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_buffer_free(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
