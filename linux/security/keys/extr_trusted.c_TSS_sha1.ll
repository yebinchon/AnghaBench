; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_TSS_sha1.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_TSS_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdesc = type { i32 }

@hashalg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"trusted_key: can't alloc %s\0A\00", align 1
@hash_alg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @TSS_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TSS_sha1(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sdesc*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @hashalg, align 4
  %11 = call %struct.sdesc* @init_sdesc(i32 %10)
  store %struct.sdesc* %11, %struct.sdesc** %8, align 8
  %12 = load %struct.sdesc*, %struct.sdesc** %8, align 8
  %13 = call i64 @IS_ERR(%struct.sdesc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @hash_alg, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sdesc*, %struct.sdesc** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.sdesc* %18)
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.sdesc*, %struct.sdesc** %8, align 8
  %22 = getelementptr inbounds %struct.sdesc, %struct.sdesc* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @crypto_shash_digest(i32* %22, i8* %23, i32 %24, i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.sdesc*, %struct.sdesc** %8, align 8
  %28 = call i32 @kzfree(%struct.sdesc* %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.sdesc* @init_sdesc(i32) #1

declare dso_local i64 @IS_ERR(%struct.sdesc*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sdesc*) #1

declare dso_local i32 @crypto_shash_digest(i32*, i8*, i32, i8*) #1

declare dso_local i32 @kzfree(%struct.sdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
