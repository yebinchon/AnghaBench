; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_change_info = type { i32 }

@OP_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs4_change_info*, %struct.nfs4_change_info*)* @decode_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rename(%struct.xdr_stream* %0, %struct.nfs4_change_info* %1, %struct.nfs4_change_info* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_change_info*, align 8
  %6 = alloca %struct.nfs4_change_info*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_change_info* %1, %struct.nfs4_change_info** %5, align 8
  store %struct.nfs4_change_info* %2, %struct.nfs4_change_info** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_RENAME, align 4
  %10 = call i32 @decode_op_hdr(%struct.xdr_stream* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %5, align 8
  %17 = call i32 @decode_change_info(%struct.xdr_stream* %15, %struct.nfs4_change_info* %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %6, align 8
  %23 = call i32 @decode_change_info(%struct.xdr_stream* %21, %struct.nfs4_change_info* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %19, %13
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_change_info(%struct.xdr_stream*, %struct.nfs4_change_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
