; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_sock_file_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_sock_file_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_sock_file_perm(%struct.aa_label* %0, i8* %1, i32 %2, %struct.socket* %3) #0 {
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.socket* %3, %struct.socket** %8, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %10 = icmp ne %struct.aa_label* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @AA_BUG(i32 %12)
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = icmp ne %struct.socket* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @AA_BUG(i32 %24)
  %26 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.socket*, %struct.socket** %8, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @aa_label_sk_perm(%struct.aa_label* %26, i8* %27, i32 %28, i32 %31)
  ret i32 %32
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_label_sk_perm(%struct.aa_label*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
