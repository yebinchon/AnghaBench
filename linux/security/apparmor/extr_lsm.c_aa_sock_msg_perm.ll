; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_aa_sock_msg_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_aa_sock_msg_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.socket*, %struct.msghdr*, i32)* @aa_sock_msg_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_sock_msg_perm(i8* %0, i32 %1, %struct.socket* %2, %struct.msghdr* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.socket* %2, %struct.socket** %8, align 8
  store %struct.msghdr* %3, %struct.msghdr** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.socket*, %struct.socket** %8, align 8
  %12 = icmp ne %struct.socket* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.socket*, %struct.socket** %8, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %24 = icmp ne %struct.msghdr* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  %28 = call i32 (...) @in_interrupt()
  %29 = call i32 @AA_BUG(i32 %28)
  %30 = load %struct.socket*, %struct.socket** %8, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.socket*, %struct.socket** %8, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @msg_perm(i8* %35, i32 %36, %struct.socket* %37, %struct.msghdr* %38, i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.socket*, %struct.socket** %8, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @aa_sk_perm(i8* %41, i32 %42, %struct.TYPE_2__* %45)
  %47 = call i32 @af_select(i32 %34, i32 %40, i32 %46)
  ret i32 %47
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @af_select(i32, i32, i32) #1

declare dso_local i32 @msg_perm(i8*, i32, %struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i32 @aa_sk_perm(i8*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
