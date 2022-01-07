; ModuleID = '/home/carl/AnghaBench/linux/tools/build/feature/extr_test-libcrypto.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/build/feature/extr_test-libcrypto.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@__const.main.dat = private unnamed_addr constant [6 x i8] c"12345\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i8], align 1
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %7 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %8 = add nsw i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.dat, i32 0, i32 0), i64 6, i1 false)
  %13 = call i32 @MD5_Init(i32* %2)
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %15 = call i32 @MD5_Update(i32* %2, i8* %14, i32 6)
  %16 = getelementptr inbounds i8, i8* %11, i64 0
  %17 = call i32 @MD5_Final(i8* %16, i32* %2)
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %11, i64 0
  %20 = call i32 @SHA1(i8* %18, i32 6, i8* %19)
  store i32 0, i32* %1, align 4
  %21 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %21)
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MD5_Init(i32*) #3

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #3

declare dso_local i32 @MD5_Final(i8*, i32*) #3

declare dso_local i32 @SHA1(i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
