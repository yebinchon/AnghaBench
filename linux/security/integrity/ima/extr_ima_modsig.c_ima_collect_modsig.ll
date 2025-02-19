; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_modsig.c_ima_collect_modsig.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_modsig.c_ima_collect_modsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modsig = type { i32, i32, i32, i32, i64 }

@MODULE_SIG_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_collect_modsig(%struct.modsig* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.modsig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.modsig* %0, %struct.modsig** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.modsig*, %struct.modsig** %4, align 8
  %9 = getelementptr inbounds %struct.modsig, %struct.modsig* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @MODULE_SIG_STRING, align 4
  %12 = call i64 @strlen(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = add i64 %13, 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.modsig*, %struct.modsig** %4, align 8
  %20 = getelementptr inbounds %struct.modsig, %struct.modsig* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pkcs7_supply_detached_data(i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %39

28:                                               ; preds = %3
  %29 = load %struct.modsig*, %struct.modsig** %4, align 8
  %30 = getelementptr inbounds %struct.modsig, %struct.modsig* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.modsig*, %struct.modsig** %4, align 8
  %33 = getelementptr inbounds %struct.modsig, %struct.modsig* %32, i32 0, i32 2
  %34 = load %struct.modsig*, %struct.modsig** %4, align 8
  %35 = getelementptr inbounds %struct.modsig, %struct.modsig* %34, i32 0, i32 1
  %36 = load %struct.modsig*, %struct.modsig** %4, align 8
  %37 = getelementptr inbounds %struct.modsig, %struct.modsig* %36, i32 0, i32 0
  %38 = call i32 @pkcs7_get_digest(i32 %31, i32* %33, i32* %35, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %27
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @pkcs7_supply_detached_data(i32, i8*, i32) #1

declare dso_local i32 @pkcs7_get_digest(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
