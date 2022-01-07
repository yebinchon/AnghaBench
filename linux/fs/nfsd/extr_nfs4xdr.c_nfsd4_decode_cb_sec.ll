; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_cb_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_cb_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_cb_sec = type { i32, i32, i32 }
%struct.user_namespace = type { i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"RPC_AUTH_UNIX with invaliduid or gid ignoring!\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"RPC_AUTH_GSS callback secflavor not supported!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Illegal callback secflavor\0A\00", align 1
@nfserr_inval = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_cb_sec*)* @nfsd4_decode_cb_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_cb_sec(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_cb_sec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_cb_sec*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_cb_sec* %1, %struct.nfsd4_cb_sec** %5, align 8
  %15 = load i32, i32* @DECODE_HEAD, align 4
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.user_namespace* @nfsd_user_namespace(i32 %18)
  store %struct.user_namespace* %19, %struct.user_namespace** %6, align 8
  %20 = call i32 @READ_BUF(i32 4)
  %21 = load i64, i64* @p, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @p, align 8
  %23 = trunc i64 %21 to i32
  %24 = call i32 @be32_to_cpup(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %32 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %146, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %149

38:                                               ; preds = %34
  %39 = call i32 @READ_BUF(i32 4)
  %40 = load i64, i64* @p, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @p, align 8
  %42 = trunc i64 %40 to i32
  %43 = call i32 @be32_to_cpup(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %142 [
    i32 129, label %45
    i32 128, label %54
    i32 130, label %117
  ]

45:                                               ; preds = %38
  %46 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %47 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %52 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %51, i32 0, i32 0
  store i32 129, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %145

54:                                               ; preds = %38
  %55 = call i32 @READ_BUF(i32 8)
  %56 = load i64, i64* @p, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* @p, align 8
  %58 = trunc i64 %56 to i32
  %59 = call i32 @be32_to_cpup(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i64, i64* @p, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @p, align 8
  %62 = trunc i64 %60 to i32
  %63 = call i32 @be32_to_cpup(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @READ_BUF(i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @SAVEMEM(i8* %66, i32 %67)
  %69 = call i32 @READ_BUF(i32 8)
  %70 = load i64, i64* @p, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* @p, align 8
  %72 = trunc i64 %70 to i32
  %73 = call i32 @be32_to_cpup(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i64, i64* @p, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @p, align 8
  %76 = trunc i64 %74 to i32
  %77 = call i32 @be32_to_cpup(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = call i32 @READ_BUF(i32 4)
  %79 = load i64, i64* @p, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* @p, align 8
  %81 = trunc i64 %79 to i32
  %82 = call i32 @be32_to_cpup(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 4
  %85 = call i32 @READ_BUF(i32 %84)
  %86 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %87 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %116

90:                                               ; preds = %54
  %91 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @make_kuid(%struct.user_namespace* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @make_kgid(%struct.user_namespace* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @uid_valid(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @gid_valid(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %107 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %110 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.nfsd4_cb_sec*, %struct.nfsd4_cb_sec** %5, align 8
  %112 = getelementptr inbounds %struct.nfsd4_cb_sec, %struct.nfsd4_cb_sec* %111, i32 0, i32 0
  store i32 128, i32* %112, align 4
  br label %115

113:                                              ; preds = %100, %90
  %114 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %104
  br label %116

116:                                              ; preds = %115, %54
  br label %145

117:                                              ; preds = %38
  %118 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @READ_BUF(i32 8)
  %120 = load i64, i64* @p, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* @p, align 8
  %122 = trunc i64 %120 to i32
  %123 = call i32 @be32_to_cpup(i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i64, i64* @p, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* @p, align 8
  %126 = trunc i64 %124 to i32
  %127 = call i32 @be32_to_cpup(i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @READ_BUF(i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @XDR_QUADLEN(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @p, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* @p, align 8
  %135 = call i32 @READ_BUF(i32 4)
  %136 = load i64, i64* @p, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* @p, align 8
  %138 = trunc i64 %136 to i32
  %139 = call i32 @be32_to_cpup(i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @READ_BUF(i32 %140)
  br label %145

142:                                              ; preds = %38
  %143 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @nfserr_inval, align 4
  store i32 %144, i32* %3, align 4
  br label %151

145:                                              ; preds = %117, %116, %53
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %34

149:                                              ; preds = %34
  %150 = load i32, i32* @DECODE_TAIL, align 4
  br label %151

151:                                              ; preds = %149, %142
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.user_namespace* @nfsd_user_namespace(i32) #1

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @SAVEMEM(i8*, i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
