; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs2_fsstat = type { i8*, i8*, i8*, i8*, i8* }

@NFS_info_sz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs2_fsstat*)* @decode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_info(%struct.xdr_stream* %0, %struct.nfs2_fsstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs2_fsstat*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs2_fsstat* %1, %struct.nfs2_fsstat** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @NFS_info_sz, align 4
  %9 = shl i32 %8, 2
  %10 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = call i8* @be32_to_cpup(i32* %21)
  %24 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %5, align 8
  %25 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = call i8* @be32_to_cpup(i32* %26)
  %29 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %5, align 8
  %30 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = call i8* @be32_to_cpup(i32* %31)
  %34 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %5, align 8
  %35 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = call i8* @be32_to_cpup(i32* %36)
  %39 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %5, align 8
  %40 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @be32_to_cpup(i32* %41)
  %43 = load %struct.nfs2_fsstat*, %struct.nfs2_fsstat** %5, align 8
  %44 = getelementptr inbounds %struct.nfs2_fsstat, %struct.nfs2_fsstat* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %20, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
