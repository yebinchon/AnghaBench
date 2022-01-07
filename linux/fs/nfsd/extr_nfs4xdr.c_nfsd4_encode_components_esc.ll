; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_components_esc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_components_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"nfsd4_encode_components(%s)\0A\00", align 1
@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i8, i8*, i8, i8)* @nfsd4_encode_components_esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_components_esc(%struct.xdr_stream* %0, i8 signext %1, i8* %2, i8 signext %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_stream*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %24 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %29 = call i32* @xdr_reserve_space(%struct.xdr_stream* %28, i32 4)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @nfserr_resource, align 4
  store i32 %33, i32* %6, align 4
  br label %156

34:                                               ; preds = %5
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %17, align 8
  store i8* %37, i8** %18, align 8
  br label %38

38:                                               ; preds = %146, %34
  %39 = load i8*, i8** %18, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %148

42:                                               ; preds = %38
  store i32 0, i32* %20, align 4
  %43 = load i8*, i8** %17, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i8*, i8** %18, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i8*, i8** %18, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %11, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi i1 [ false, %50 ], [ %61, %55 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %18, align 8
  br label %50

68:                                               ; preds = %62
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %19, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load i8*, i8** %19, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i8*, i8** %19, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79, %75
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %17, align 8
  store i32 1, i32* %20, align 4
  br label %89

89:                                               ; preds = %86, %79, %68
  br label %90

90:                                               ; preds = %89, %42
  %91 = load i32, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i8*, i8** %18, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** %18, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* %8, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  br label %106

106:                                              ; preds = %99, %94
  %107 = phi i1 [ false, %94 ], [ %105, %99 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %18, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %18, align 8
  br label %94

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %90
  %114 = load i8*, i8** %18, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 4
  %126 = call i32* @xdr_reserve_space(%struct.xdr_stream* %123, i32 %125)
  store i32* %126, i32** %12, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @nfserr_resource, align 4
  store i32 %130, i32* %6, align 4
  br label %156

131:                                              ; preds = %122
  %132 = load i32*, i32** %12, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32* @xdr_encode_opaque(i32* %132, i8* %133, i32 %134)
  store i32* %135, i32** %12, align 8
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %141

138:                                              ; preds = %113
  %139 = load i8*, i8** %18, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %18, align 8
  br label %141

141:                                              ; preds = %138, %131
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i8*, i8** %19, align 8
  store i8* %145, i8** %18, align 8
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i8*, i8** %18, align 8
  store i8* %147, i8** %17, align 8
  br label %38

148:                                              ; preds = %38
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @htonl(i32 %149)
  store i32 %150, i32* %13, align 4
  %151 = load %struct.xdr_stream*, %struct.xdr_stream** %7, align 8
  %152 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @write_bytes_to_xdr_buf(%struct.TYPE_2__* %153, i32 %154, i32* %13, i32 4)
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %148, %129, %32
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.TYPE_2__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
