; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_path_chown.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_path_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@TOMOYO_TYPE_CHOWN = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@TOMOYO_TYPE_CHGRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32)* @tomoyo_path_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_chown(%struct.path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @uid_valid(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @TOMOYO_TYPE_CHOWN, align 4
  %13 = load %struct.path*, %struct.path** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @from_kuid(i32* @init_user_ns, i32 %14)
  %16 = call i32 @tomoyo_path_number_perm(i32 %12, %struct.path* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @gid_valid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @TOMOYO_TYPE_CHGRP, align 4
  %26 = load %struct.path*, %struct.path** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @from_kgid(i32* @init_user_ns, i32 %27)
  %29 = call i32 @tomoyo_path_number_perm(i32 %25, %struct.path* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %24, %20, %17
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @tomoyo_path_number_perm(i32, %struct.path*, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
