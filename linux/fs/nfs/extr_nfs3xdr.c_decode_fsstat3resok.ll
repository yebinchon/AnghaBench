; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_fsstat3resok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_fsstat3resok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fsstat = type { i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fsstat*)* @decode_fsstat3resok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fsstat3resok(%struct.xdr_stream* %0, %struct.nfs_fsstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_fsstat*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_fsstat* %1, %struct.nfs_fsstat** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 52)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %20, i32 0, i32 5
  %22 = call i32* @xdr_decode_size3(i32* %19, i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %24, i32 0, i32 4
  %26 = call i32* @xdr_decode_size3(i32* %23, i32* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %28, i32 0, i32 3
  %30 = call i32* @xdr_decode_size3(i32* %27, i32* %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %32, i32 0, i32 2
  %34 = call i32* @xdr_decode_size3(i32* %31, i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %36, i32 0, i32 1
  %38 = call i32* @xdr_decode_size3(i32* %35, i32* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.nfs_fsstat*, %struct.nfs_fsstat** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_fsstat, %struct.nfs_fsstat* %40, i32 0, i32 0
  %42 = call i32* @xdr_decode_size3(i32* %39, i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %18, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_decode_size3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
