; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_ima_template_desc_current.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_ima_template_desc_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_desc = type { i32 }

@ima_template = common dso_local global %struct.ima_template_desc* null, align 8
@CONFIG_IMA_DEFAULT_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ima_template_desc* @ima_template_desc_current() #0 {
  %1 = load %struct.ima_template_desc*, %struct.ima_template_desc** @ima_template, align 8
  %2 = icmp ne %struct.ima_template_desc* %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @ima_init_template_list()
  %5 = load i32, i32* @CONFIG_IMA_DEFAULT_TEMPLATE, align 4
  %6 = call %struct.ima_template_desc* @lookup_template_desc(i32 %5)
  store %struct.ima_template_desc* %6, %struct.ima_template_desc** @ima_template, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = load %struct.ima_template_desc*, %struct.ima_template_desc** @ima_template, align 8
  ret %struct.ima_template_desc* %8
}

declare dso_local i32 @ima_init_template_list(...) #1

declare dso_local %struct.ima_template_desc* @lookup_template_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
