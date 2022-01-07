; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_sk_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_sk_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.aa_label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_sk_perm(i8* %0, i32 %1, %struct.sock* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sock* %2, %struct.sock** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %6, align 8
  %10 = icmp ne %struct.sock* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @AA_BUG(i32 %12)
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %16, %struct.aa_label** %7, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call i32 @aa_label_sk_perm(%struct.aa_label* %17, i8* %18, i32 %19, %struct.sock* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %23 = call i32 @end_current_label_crit_section(%struct.aa_label* %22)
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i32 @aa_label_sk_perm(%struct.aa_label*, i8*, i32, %struct.sock*) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
