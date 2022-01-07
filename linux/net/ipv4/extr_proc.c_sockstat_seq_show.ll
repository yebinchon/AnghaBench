; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_sockstat_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_sockstat_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@tcp_orphan_count = common dso_local global i32 0, align 4
@tcp_prot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TCP: inuse %d orphan %d tw %d alloc %d mem %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"UDP: inuse %d mem %ld\0A\00", align 1
@udp_prot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"UDPLITE: inuse %d\0A\00", align 1
@udplite_prot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"RAW: inuse %d\0A\00", align 1
@raw_prot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"FRAG: inuse %u memory %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sockstat_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockstat_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = call i32 @percpu_counter_sum_positive(i32* @tcp_orphan_count)
  store i32 %11, i32* %6, align 4
  %12 = call i32 @proto_sockets_allocated_sum_positive(i32* @tcp_prot)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @socket_seq_show(%struct.seq_file* %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = call i32 @sock_prot_inuse_get(%struct.net* %16, i32* @tcp_prot)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @proto_memory_allocated(i32* @tcp_prot)
  %26 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = call i32 @sock_prot_inuse_get(%struct.net* %28, i32* @udp_prot)
  %30 = call i32 @proto_memory_allocated(i32* @udp_prot)
  %31 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = call i32 @sock_prot_inuse_get(%struct.net* %33, i32* @udplite_prot)
  %35 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = call i32 @sock_prot_inuse_get(%struct.net* %37, i32* @raw_prot)
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @atomic_read(i32* %46)
  %48 = load %struct.net*, %struct.net** %5, align 8
  %49 = getelementptr inbounds %struct.net, %struct.net* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @frag_mem_limit(%struct.TYPE_8__* %51)
  %53 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %52)
  ret i32 0
}

declare dso_local i32 @percpu_counter_sum_positive(i32*) #1

declare dso_local i32 @proto_sockets_allocated_sum_positive(i32*) #1

declare dso_local i32 @socket_seq_show(%struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @sock_prot_inuse_get(%struct.net*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @proto_memory_allocated(i32*) #1

declare dso_local i32 @frag_mem_limit(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
