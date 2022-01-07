; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_decode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fattr = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i8*, i32, i32, i8*, i32 }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.user_namespace = type { i32 }

@NFS_fattr_sz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V2 = common dso_local global i32 0, align 4
@NFCHR = common dso_local global i64 0, align 8
@NFS2_FIFO_DEV = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NFS: returned invalid uid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"NFS: returned invalid gid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fattr*, %struct.user_namespace*)* @decode_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fattr(%struct.xdr_stream* %0, %struct.nfs_fattr* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %6, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %7, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %12 = load i32, i32* @NFS_fattr_sz, align 4
  %13 = shl i32 %12, 2
  %14 = call i32* @xdr_inline_decode(%struct.xdr_stream* %11, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %168

24:                                               ; preds = %3
  %25 = load i32, i32* @NFS_ATTR_FATTR_V2, align 4
  %26 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @xdr_decode_ftype(i32* %30, i64* %9)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  %34 = ptrtoint i32* %32 to i32
  %35 = call i8* @be32_to_cpup(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  %41 = ptrtoint i32* %39 to i32
  %42 = call i8* @be32_to_cpup(i32 %41)
  %43 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %43, i32 0, i32 12
  store i8* %42, i8** %44, align 8
  %45 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  %48 = ptrtoint i32* %46 to i32
  %49 = call i8* @be32_to_cpup(i32 %48)
  %50 = call i32 @make_kuid(%struct.user_namespace* %45, i8* %49)
  %51 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uid_valid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %24
  br label %160

59:                                               ; preds = %24
  %60 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  %63 = ptrtoint i32* %61 to i32
  %64 = call i8* @be32_to_cpup(i32 %63)
  %65 = call i32 @make_kgid(%struct.user_namespace* %60, i8* %64)
  %66 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %69 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @gid_valid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %59
  br label %164

74:                                               ; preds = %59
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  %77 = ptrtoint i32* %75 to i32
  %78 = call i8* @be32_to_cpup(i32 %77)
  %79 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %80 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %10, align 8
  %83 = ptrtoint i32* %81 to i32
  %84 = call i8* @be32_to_cpup(i32 %83)
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %86 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i8* %84, i8** %88, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %10, align 8
  %91 = ptrtoint i32* %89 to i32
  %92 = call i8* @be32_to_cpup(i32 %91)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @new_decode_dev(i64 %94)
  %96 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %97 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @NFCHR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %74
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @NFS2_FIFO_DEV, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %107 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @S_IFMT, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* @S_IFIFO, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %115 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %117 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %116, i32 0, i32 8
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %105, %101, %74
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  %121 = ptrtoint i32* %119 to i32
  %122 = call i8* @be32_to_cpup(i32 %121)
  %123 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %124 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %10, align 8
  %129 = ptrtoint i32* %127 to i32
  %130 = call i8* @be32_to_cpup(i32 %129)
  %131 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %132 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %135 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %10, align 8
  %139 = ptrtoint i32* %137 to i32
  %140 = call i8* @be32_to_cpup(i32 %139)
  %141 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %142 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %145 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %144, i32 0, i32 4
  %146 = call i32* @xdr_decode_time(i32* %143, i32* %145)
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %149 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %148, i32 0, i32 3
  %150 = call i32* @xdr_decode_time(i32* %147, i32* %149)
  store i32* %150, i32** %10, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %153 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %152, i32 0, i32 1
  %154 = call i32* @xdr_decode_time(i32* %151, i32* %153)
  %155 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %156 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %155, i32 0, i32 1
  %157 = call i32 @nfs_timespec_to_change_attr(i32* %156)
  %158 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %159 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  store i32 0, i32* %4, align 4
  br label %168

160:                                              ; preds = %58
  %161 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %168

164:                                              ; preds = %73
  %165 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %160, %118, %21
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_decode_ftype(i32*, i64*) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i8*) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i8*) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @new_decode_dev(i64) #1

declare dso_local i32* @xdr_decode_time(i32*, i32*) #1

declare dso_local i32 @nfs_timespec_to_change_attr(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
