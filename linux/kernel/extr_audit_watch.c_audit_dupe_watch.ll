; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_dupe_watch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_dupe_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_watch = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_watch* (%struct.audit_watch*)* @audit_dupe_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_watch* @audit_dupe_watch(%struct.audit_watch* %0) #0 {
  %2 = alloca %struct.audit_watch*, align 8
  %3 = alloca %struct.audit_watch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  store %struct.audit_watch* %0, %struct.audit_watch** %3, align 8
  %6 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %7 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kstrdup(i32 %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.audit_watch* @ERR_PTR(i32 %19)
  store %struct.audit_watch* %20, %struct.audit_watch** %2, align 8
  br label %52

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.audit_watch* @audit_init_watch(i8* %22)
  store %struct.audit_watch* %23, %struct.audit_watch** %5, align 8
  %24 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %25 = call i64 @IS_ERR(%struct.audit_watch* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @kfree(i8* %28)
  br label %50

30:                                               ; preds = %21
  %31 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %32 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %35 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %37 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %40 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %42 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @audit_get_parent(i32 %43)
  %45 = load %struct.audit_watch*, %struct.audit_watch** %3, align 8
  %46 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %49 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %30, %27
  %51 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  store %struct.audit_watch* %51, %struct.audit_watch** %2, align 8
  br label %52

52:                                               ; preds = %50, %17
  %53 = load %struct.audit_watch*, %struct.audit_watch** %2, align 8
  ret %struct.audit_watch* %53
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_watch* @ERR_PTR(i32) #1

declare dso_local %struct.audit_watch* @audit_init_watch(i8*) #1

declare dso_local i64 @IS_ERR(%struct.audit_watch*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @audit_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
