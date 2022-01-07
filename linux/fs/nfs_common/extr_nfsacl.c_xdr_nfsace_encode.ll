; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs_common/extr_nfsacl.c_xdr_nfsace_encode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs_common/extr_nfsacl.c_xdr_nfsace_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_array2_desc = type { i32 }
%struct.nfsacl_encode_desc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i32, i32, i32 }

@init_user_ns = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_array2_desc*, i8*)* @xdr_nfsace_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_nfsace_encode(%struct.xdr_array2_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.xdr_array2_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfsacl_encode_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.posix_acl_entry*, align 8
  store %struct.xdr_array2_desc* %0, %struct.xdr_array2_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.xdr_array2_desc*, %struct.xdr_array2_desc** %3, align 8
  %9 = bitcast %struct.xdr_array2_desc* %8 to %struct.nfsacl_encode_desc*
  store %struct.nfsacl_encode_desc* %9, %struct.nfsacl_encode_desc** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load %struct.nfsacl_encode_desc*, %struct.nfsacl_encode_desc** %5, align 8
  %13 = getelementptr inbounds %struct.nfsacl_encode_desc, %struct.nfsacl_encode_desc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %15, align 8
  %17 = load %struct.nfsacl_encode_desc*, %struct.nfsacl_encode_desc** %5, align 8
  %18 = getelementptr inbounds %struct.nfsacl_encode_desc, %struct.nfsacl_encode_desc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %16, i64 %21
  store %struct.posix_acl_entry* %22, %struct.posix_acl_entry** %7, align 8
  %23 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %24 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfsacl_encode_desc*, %struct.nfsacl_encode_desc** %5, align 8
  %27 = getelementptr inbounds %struct.nfsacl_encode_desc, %struct.nfsacl_encode_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = call i8* @htonl(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %35 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %73 [
    i32 128, label %37
    i32 130, label %46
    i32 129, label %55
    i32 131, label %64
  ]

37:                                               ; preds = %2
  %38 = load %struct.nfsacl_encode_desc*, %struct.nfsacl_encode_desc** %5, align 8
  %39 = getelementptr inbounds %struct.nfsacl_encode_desc, %struct.nfsacl_encode_desc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @from_kuid(i32* @init_user_ns, i32 %40)
  %42 = call i8* @htonl(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %76

46:                                               ; preds = %2
  %47 = load %struct.nfsacl_encode_desc*, %struct.nfsacl_encode_desc** %5, align 8
  %48 = getelementptr inbounds %struct.nfsacl_encode_desc, %struct.nfsacl_encode_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @from_kgid(i32* @init_user_ns, i32 %49)
  %51 = call i8* @htonl(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %76

55:                                               ; preds = %2
  %56 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %57 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @from_kuid(i32* @init_user_ns, i32 %58)
  %60 = call i8* @htonl(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %76

64:                                               ; preds = %2
  %65 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %66 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @from_kgid(i32* @init_user_ns, i32 %67)
  %69 = call i8* @htonl(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %76

73:                                               ; preds = %2
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  store i32 0, i32* %74, align 4
  br label %76

76:                                               ; preds = %73, %64, %55, %46, %37
  %77 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %78 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @S_IRWXO, align 4
  %81 = and i32 %79, %80
  %82 = call i8* @htonl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  ret i32 0
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
