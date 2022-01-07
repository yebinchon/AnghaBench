; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i8*, i8*, i64, i32, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvec* }
%struct.kvec = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfsd4_compoundargs*, i32)* @read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_buf(%struct.nfsd4_compoundargs* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kvec*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %2
  %24 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.kvec*, %struct.kvec** %28, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i64 0
  store %struct.kvec* %30, %struct.kvec** %8, align 8
  %31 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %23
  %36 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %37 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %36, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load %struct.kvec*, %struct.kvec** %8, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load %struct.kvec*, %struct.kvec** %8, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.kvec*, %struct.kvec** %8, align 8
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %53 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %35, %23
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %139

59:                                               ; preds = %54
  %60 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %61 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @XDR_QUADLEN(i32 %63)
  %65 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %66 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %64
  store i8* %68, i8** %66, align 8
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %3, align 8
  br label %139

70:                                               ; preds = %2
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %74 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i8* null, i8** %3, align 8
  br label %139

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i8* null, i8** %3, align 8
  br label %139

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp ule i64 %90, 8
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %94 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %7, align 8
  br label %110

96:                                               ; preds = %88
  %97 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %98 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kmalloc(i32 %101, i32 %102)
  %104 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %105 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  store i8* %103, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  store i8* null, i8** %3, align 8
  br label %139

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %113 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @memcpy(i8* %111, i8* %114, i32 %115)
  %117 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %118 = call i32 @next_decode_page(%struct.nfsd4_compoundargs* %117)
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %124 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub i32 %126, %127
  %129 = call i32 @memcpy(i8* %122, i8* %125, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %130, %131
  %133 = call i64 @XDR_QUADLEN(i32 %132)
  %134 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %135 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %133
  store i8* %137, i8** %135, align 8
  %138 = load i8*, i8** %7, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %110, %108, %87, %80, %59, %58
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i64 @XDR_QUADLEN(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @next_decode_page(%struct.nfsd4_compoundargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
