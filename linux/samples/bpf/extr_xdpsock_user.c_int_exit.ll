; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_int_exit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_int_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.xsk_umem* }
%struct.xsk_umem = type { i32 }

@xsks = common dso_local global %struct.TYPE_4__** null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @int_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_umem*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @xsks, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %4, i64 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.xsk_umem*, %struct.xsk_umem** %9, align 8
  store %struct.xsk_umem* %10, %struct.xsk_umem** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (...) @dump_stats()
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @xsks, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @xsk_socket__delete(i32 %17)
  %19 = load %struct.xsk_umem*, %struct.xsk_umem** %3, align 8
  %20 = call i32 @xsk_umem__delete(%struct.xsk_umem* %19)
  %21 = call i32 (...) @remove_xdp_program()
  %22 = load i32, i32* @EXIT_SUCCESS, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable
}

declare dso_local i32 @dump_stats(...) #1

declare dso_local i32 @xsk_socket__delete(i32) #1

declare dso_local i32 @xsk_umem__delete(%struct.xsk_umem*) #1

declare dso_local i32 @remove_xdp_program(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
