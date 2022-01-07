; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_mk_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_mk_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32*, i32, i32 }

@SYM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* (i8*)* @mk_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @mk_node(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.string_list* @xmalloc(i32 16)
  store %struct.string_list* %4, %struct.string_list** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @xstrdup(i8* %5)
  %7 = load %struct.string_list*, %struct.string_list** %3, align 8
  %8 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @SYM_NORMAL, align 4
  %10 = load %struct.string_list*, %struct.string_list** %3, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.string_list*, %struct.string_list** %3, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %14
}

declare dso_local %struct.string_list* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
