; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_RENAME = common dso_local global i32 0, align 4
@decode_rename_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.qstr*, %struct.qstr*, %struct.compound_hdr*)* @encode_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_rename(%struct.xdr_stream* %0, %struct.qstr* %1, %struct.qstr* %2, %struct.compound_hdr* %3) #0 {
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.compound_hdr*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  store %struct.compound_hdr* %3, %struct.compound_hdr** %8, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %10 = load i32, i32* @OP_RENAME, align 4
  %11 = load i32, i32* @decode_rename_maxsz, align 4
  %12 = load %struct.compound_hdr*, %struct.compound_hdr** %8, align 8
  %13 = call i32 @encode_op_hdr(%struct.xdr_stream* %9, i32 %10, i32 %11, %struct.compound_hdr* %12)
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %15 = load %struct.qstr*, %struct.qstr** %6, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @encode_string(%struct.xdr_stream* %14, i32 %17, i32 %20)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.qstr*, %struct.qstr** %7, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qstr*, %struct.qstr** %7, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @encode_string(%struct.xdr_stream* %22, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_string(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
