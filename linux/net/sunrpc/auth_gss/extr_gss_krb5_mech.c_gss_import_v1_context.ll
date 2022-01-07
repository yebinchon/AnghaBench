; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_gss_import_v1_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_gss_import_v1_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENCTYPE_DES_CBC_RAW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SGN_ALG_DES_MAC_MD5 = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SEAL_ALG_DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.krb5_ctx*)* @gss_import_v1_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_import_v1_context(i8* %0, i8* %1, %struct.krb5_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.krb5_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.krb5_ctx* %2, %struct.krb5_ctx** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %12, i32 0, i32 0
  %14 = call i8* @simple_get_bytes(i8* %10, i8* %11, i32* %13, i32 4)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %169

19:                                               ; preds = %3
  %20 = load i32, i32* @ENCTYPE_DES_CBC_RAW, align 4
  %21 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @get_gss_krb5_enctype(i32 %25)
  %27 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %27, i32 0, i32 6
  store i32* %26, i32** %28, align 8
  %29 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i8* @ERR_PTR(i32 %35)
  store i8* %36, i8** %5, align 8
  br label %169

37:                                               ; preds = %19
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr i8, i8* %38, i64 20
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr i8, i8* %43, i64 20
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ult i8* %44, %45
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ true, %37 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i8* @ERR_PTR(i32 %54)
  store i8* %55, i8** %5, align 8
  br label %169

56:                                               ; preds = %47
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr i8, i8* %57, i64 20
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @simple_get_bytes(i8* %59, i8* %60, i32* %9, i32 4)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %169

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SGN_ALG_DES_MAC_MD5, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @ENOSYS, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i8* @ERR_PTR(i32 %72)
  store i8* %73, i8** %5, align 8
  br label %169

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @simple_get_bytes(i8* %75, i8* %76, i32* %9, i32 4)
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %169

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @SEAL_ALG_DES, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @ENOSYS, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i8* @ERR_PTR(i32 %88)
  store i8* %89, i8** %5, align 8
  br label %169

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %93, i32 0, i32 1
  %95 = call i8* @simple_get_bytes(i8* %91, i8* %92, i32* %94, i32 4)
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %169

100:                                              ; preds = %90
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i8* @simple_get_bytes(i8* %101, i8* %102, i32* %8, i32 4)
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %169

108:                                              ; preds = %100
  %109 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %109, i32 0, i32 5
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @atomic_set(i32* %110, i32 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %116 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %115, i32 0, i32 2
  %117 = call i8* @simple_get_netobj(i8* %113, i8* %114, %struct.TYPE_2__* %116)
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @IS_ERR(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %169

122:                                              ; preds = %108
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %126 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %126, i32 0, i32 3
  %128 = call i8* @get_key(i8* %123, i8* %124, %struct.krb5_ctx* %125, i32* %127)
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i64 @IS_ERR(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %163

133:                                              ; preds = %122
  %134 = load i8*, i8** %5, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %137 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %138 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %137, i32 0, i32 4
  %139 = call i8* @get_key(i8* %134, i8* %135, %struct.krb5_ctx* %136, i32* %138)
  store i8* %139, i8** %5, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %158

144:                                              ; preds = %133
  %145 = load i8*, i8** %5, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  %151 = call i8* @ERR_PTR(i32 %150)
  store i8* %151, i8** %5, align 8
  br label %153

152:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %172

153:                                              ; preds = %148
  %154 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %155 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @crypto_free_sync_skcipher(i32 %156)
  br label %158

158:                                              ; preds = %153, %143
  %159 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @crypto_free_sync_skcipher(i32 %161)
  br label %163

163:                                              ; preds = %158, %132
  %164 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %165 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @kfree(i32 %167)
  br label %169

169:                                              ; preds = %163, %121, %107, %99, %86, %81, %70, %65, %52, %33, %18
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @PTR_ERR(i8* %170)
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %169, %152
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i8* @simple_get_bytes(i8*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32* @get_gss_krb5_enctype(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @simple_get_netobj(i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i8* @get_key(i8*, i8*, %struct.krb5_ctx*, i32*) #1

declare dso_local i32 @crypto_free_sync_skcipher(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
