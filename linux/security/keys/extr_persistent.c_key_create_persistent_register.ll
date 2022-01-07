; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_create_persistent_register.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_create_persistent_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.key* }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c".persistent_register\00", align 1
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_namespace*)* @key_create_persistent_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_create_persistent_register(%struct.user_namespace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_namespace*, align 8
  %4 = alloca %struct.key*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %3, align 8
  %5 = call i32 @KUIDT_INIT(i32 0)
  %6 = call i32 @KGIDT_INIT(i32 0)
  %7 = call i32 (...) @current_cred()
  %8 = load i32, i32* @KEY_POS_ALL, align 4
  %9 = load i32, i32* @KEY_POS_SETATTR, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @KEY_USR_VIEW, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KEY_USR_READ, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %17 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %15, i32 %16, i32* null, i32* null)
  store %struct.key* %17, %struct.key** %4, align 8
  %18 = load %struct.key*, %struct.key** %4, align 8
  %19 = call i64 @IS_ERR(%struct.key* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.key*, %struct.key** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.key* %22)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.key*, %struct.key** %4, align 8
  %26 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %27 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %26, i32 0, i32 0
  store %struct.key* %25, %struct.key** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @KUIDT_INIT(i32) #1

declare dso_local i32 @KGIDT_INIT(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
