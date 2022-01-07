; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_init_watch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_watch.c_audit_init_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_watch = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_DEV_UNSET = common dso_local global i32 0, align 4
@AUDIT_INO_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_watch* (i8*)* @audit_init_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_watch* @audit_init_watch(i8* %0) #0 {
  %2 = alloca %struct.audit_watch*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.audit_watch*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.audit_watch* @kzalloc(i32 24, i32 %5)
  store %struct.audit_watch* %6, %struct.audit_watch** %4, align 8
  %7 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %8 = icmp ne %struct.audit_watch* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.audit_watch* @ERR_PTR(i32 %15)
  store %struct.audit_watch* %16, %struct.audit_watch** %2, align 8
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %19 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %18, i32 0, i32 4
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %22 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %21, i32 0, i32 3
  %23 = call i32 @refcount_set(i32* %22, i32 1)
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %26 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @AUDIT_DEV_UNSET, align 4
  %28 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %29 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AUDIT_INO_UNSET, align 4
  %31 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  %32 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.audit_watch*, %struct.audit_watch** %4, align 8
  store %struct.audit_watch* %33, %struct.audit_watch** %2, align 8
  br label %34

34:                                               ; preds = %17, %13
  %35 = load %struct.audit_watch*, %struct.audit_watch** %2, align 8
  ret %struct.audit_watch* %35
}

declare dso_local %struct.audit_watch* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_watch* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
