; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_modsig.c_ima_modsig_verify.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_modsig.c_ima_modsig_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.modsig = type { i32 }

@VERIFYING_MODULE_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_modsig_verify(%struct.key* %0, %struct.modsig* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.modsig*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.modsig* %1, %struct.modsig** %4, align 8
  %5 = load %struct.modsig*, %struct.modsig** %4, align 8
  %6 = getelementptr inbounds %struct.modsig, %struct.modsig* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.key*, %struct.key** %3, align 8
  %9 = load i32, i32* @VERIFYING_MODULE_SIGNATURE, align 4
  %10 = call i32 @verify_pkcs7_message_sig(i32* null, i32 0, i32 %7, %struct.key* %8, i32 %9, i32* null, i32* null)
  ret i32 %10
}

declare dso_local i32 @verify_pkcs7_message_sig(i32*, i32, i32, %struct.key*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
