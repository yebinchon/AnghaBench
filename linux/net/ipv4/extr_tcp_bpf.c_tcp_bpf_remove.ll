; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32 }
%struct.sk_psock_link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_psock*)* @tcp_bpf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bpf_remove(%struct.sock* %0, %struct.sk_psock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_psock*, align 8
  %5 = alloca %struct.sk_psock_link*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %8 = call %struct.sk_psock_link* @sk_psock_link_pop(%struct.sk_psock* %7)
  store %struct.sk_psock_link* %8, %struct.sk_psock_link** %5, align 8
  %9 = icmp ne %struct.sk_psock_link* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load %struct.sk_psock_link*, %struct.sk_psock_link** %5, align 8
  %13 = call i32 @sk_psock_unlink(%struct.sock* %11, %struct.sk_psock_link* %12)
  %14 = load %struct.sk_psock_link*, %struct.sk_psock_link** %5, align 8
  %15 = call i32 @sk_psock_free_link(%struct.sk_psock_link* %14)
  br label %6

16:                                               ; preds = %6
  ret void
}

declare dso_local %struct.sk_psock_link* @sk_psock_link_pop(%struct.sk_psock*) #1

declare dso_local i32 @sk_psock_unlink(%struct.sock*, %struct.sk_psock_link*) #1

declare dso_local i32 @sk_psock_free_link(%struct.sk_psock_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
