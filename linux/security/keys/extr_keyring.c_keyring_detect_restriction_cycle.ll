; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_restriction_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_restriction_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.key_restriction*, i32* }
%struct.key_restriction = type { %struct.key* }

@key_type_keyring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_restriction*)* @keyring_detect_restriction_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_detect_restriction_cycle(%struct.key* %0, %struct.key_restriction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_restriction*, align 8
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.key_restriction* %1, %struct.key_restriction** %5, align 8
  br label %6

6:                                                ; preds = %30, %2
  %7 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %8 = icmp ne %struct.key_restriction* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %11 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %10, i32 0, i32 0
  %12 = load %struct.key*, %struct.key** %11, align 8
  %13 = icmp ne %struct.key* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %16 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %15, i32 0, i32 0
  %17 = load %struct.key*, %struct.key** %16, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, @key_type_keyring
  br label %21

21:                                               ; preds = %14, %9, %6
  %22 = phi i1 [ false, %9 ], [ false, %6 ], [ %20, %14 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %25 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %24, i32 0, i32 0
  %26 = load %struct.key*, %struct.key** %25, align 8
  %27 = load %struct.key*, %struct.key** %4, align 8
  %28 = icmp eq %struct.key* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %32 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %31, i32 0, i32 0
  %33 = load %struct.key*, %struct.key** %32, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 0
  %35 = load %struct.key_restriction*, %struct.key_restriction** %34, align 8
  store %struct.key_restriction* %35, %struct.key_restriction** %5, align 8
  br label %6

36:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
