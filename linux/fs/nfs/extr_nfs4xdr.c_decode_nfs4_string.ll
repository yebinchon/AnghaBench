; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_nfs4_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_nfs4_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_string = type { i64, i32 }

@XDR_MAX_NETOBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.nfs4_string*, i32)* @decode_nfs4_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_nfs4_string(%struct.xdr_stream* %0, %struct.nfs4_string* %1, i32 %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_string*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_string* %1, %struct.nfs4_string** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load %struct.nfs4_string*, %struct.nfs4_string** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %9, i32 0, i32 1
  %11 = load i32, i32* @XDR_MAX_NETOBJ, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @xdr_stream_decode_string_dup(%struct.xdr_stream* %8, i32* %10, i32 %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.nfs4_string*, %struct.nfs4_string** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.nfs4_string*, %struct.nfs4_string** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i64, i64* %7, align 8
  ret i64 %23
}

declare dso_local i64 @xdr_stream_decode_string_dup(%struct.xdr_stream*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
