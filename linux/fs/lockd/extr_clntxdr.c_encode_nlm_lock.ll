; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_encode_nlm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_encode_nlm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nlm_lock = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nlm_lock*)* @encode_nlm_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_nlm_lock(%struct.xdr_stream* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nlm_lock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %4, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %9 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %10 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @encode_caller_name(%struct.xdr_stream* %8, i32 %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %14 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %14, i32 0, i32 2
  %16 = call i32 @encode_fh(%struct.xdr_stream* %13, i32* %15)
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %19 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %23 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @encode_netobj(%struct.xdr_stream* %17, i32 %21, i32 %25)
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %28 = call i8** @xdr_reserve_space(%struct.xdr_stream* %27, i32 12)
  store i8** %28, i8*** %7, align 8
  %29 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %30 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  %35 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %36 = call i32 @nlm_compute_offsets(%struct.nlm_lock* %35, i32* %5, i32* %6)
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load i8**, i8*** %7, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  ret void
}

declare dso_local i32 @encode_caller_name(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_fh(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_netobj(%struct.xdr_stream*, i32, i32) #1

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nlm_compute_offsets(%struct.nlm_lock*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
