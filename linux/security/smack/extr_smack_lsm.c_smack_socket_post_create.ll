; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_socket_post_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_socket_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket_smack* }
%struct.socket_smack = type { i32*, i32* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@smack_known_web = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SMACK_CIPSO_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32, i32, i32)* @smack_socket_post_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_socket_post_create(%struct.socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket_smack*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %47

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_KTHREAD, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.socket*, %struct.socket** %7, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.socket_smack*, %struct.socket_smack** %30, align 8
  store %struct.socket_smack* %31, %struct.socket_smack** %12, align 8
  %32 = load %struct.socket_smack*, %struct.socket_smack** %12, align 8
  %33 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %32, i32 0, i32 1
  store i32* @smack_known_web, i32** %33, align 8
  %34 = load %struct.socket_smack*, %struct.socket_smack** %12, align 8
  %35 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %34, i32 0, i32 0
  store i32* @smack_known_web, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %18
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PF_INET, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %47

41:                                               ; preds = %36
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* @SMACK_CIPSO_SOCKET, align 4
  %46 = call i32 @smack_netlabel(%struct.TYPE_3__* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %40, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smack_netlabel(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
