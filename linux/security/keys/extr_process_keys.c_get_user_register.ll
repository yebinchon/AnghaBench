; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_get_user_register.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_get_user_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.user_namespace = type { i32, %struct.key*, i32 }

@.str = private unnamed_addr constant [10 x i8] c".user_reg\00", align 1
@INVALID_GID = common dso_local global i32 0, align 4
@init_cred = common dso_local global i32 0, align 4
@KEY_POS_WRITE = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.user_namespace*)* @get_user_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @get_user_register(%struct.user_namespace* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.user_namespace*, align 8
  %4 = alloca %struct.key*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %3, align 8
  %5 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %6 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %5, i32 0, i32 1
  %7 = load %struct.key*, %struct.key** %6, align 8
  %8 = call %struct.key* @READ_ONCE(%struct.key* %7)
  store %struct.key* %8, %struct.key** %4, align 8
  %9 = load %struct.key*, %struct.key** %4, align 8
  %10 = icmp ne %struct.key* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %12, %struct.key** %2, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %15 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %18 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %17, i32 0, i32 1
  %19 = load %struct.key*, %struct.key** %18, align 8
  store %struct.key* %19, %struct.key** %4, align 8
  %20 = load %struct.key*, %struct.key** %4, align 8
  %21 = icmp ne %struct.key* %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %13
  %23 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %24 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @INVALID_GID, align 4
  %27 = load i32, i32* @KEY_POS_WRITE, align 4
  %28 = load i32, i32* @KEY_POS_SEARCH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @KEY_USR_VIEW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @KEY_USR_READ, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32* @init_cred, i32 %33, i32 0, i32* null, i32* null)
  store %struct.key* %34, %struct.key** %4, align 8
  %35 = load %struct.key*, %struct.key** %4, align 8
  %36 = call i32 @IS_ERR(%struct.key* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %22
  %39 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %40 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %39, i32 0, i32 1
  %41 = load %struct.key*, %struct.key** %4, align 8
  %42 = call i32 @smp_store_release(%struct.key** %40, %struct.key* %41)
  br label %43

43:                                               ; preds = %38, %22
  br label %44

44:                                               ; preds = %43, %13
  %45 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %46 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %45, i32 0, i32 0
  %47 = call i32 @up_write(i32* %46)
  %48 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %48, %struct.key** %2, align 8
  br label %49

49:                                               ; preds = %44, %11
  %50 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %50
}

declare dso_local %struct.key* @READ_ONCE(%struct.key*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.key*) #1

declare dso_local i32 @smp_store_release(%struct.key**, %struct.key*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
