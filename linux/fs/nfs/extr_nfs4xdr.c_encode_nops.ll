; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_nops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_nops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compound_hdr = type { i64, i32* }

@NFS4_MAX_OPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compound_hdr*)* @encode_nops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_nops(%struct.compound_hdr* %0) #0 {
  %2 = alloca %struct.compound_hdr*, align 8
  store %struct.compound_hdr* %0, %struct.compound_hdr** %2, align 8
  %3 = load %struct.compound_hdr*, %struct.compound_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NFS4_MAX_OPS, align 8
  %7 = icmp sgt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.compound_hdr*, %struct.compound_hdr** %2, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @htonl(i64 %12)
  %14 = load %struct.compound_hdr*, %struct.compound_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32 %13, i32* %16, align 4
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
