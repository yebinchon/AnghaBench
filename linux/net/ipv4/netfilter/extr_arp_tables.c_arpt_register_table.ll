; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_arpt_register_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_arpt_register_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xt_table = type { i32 }
%struct.arpt_replace = type { i32, i32 }
%struct.nf_hook_ops = type { i32 }
%struct.xt_table_info = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arpt_register_table(%struct.net* %0, %struct.xt_table* %1, %struct.arpt_replace* %2, %struct.nf_hook_ops* %3, %struct.xt_table** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xt_table*, align 8
  %9 = alloca %struct.arpt_replace*, align 8
  %10 = alloca %struct.nf_hook_ops*, align 8
  %11 = alloca %struct.xt_table**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xt_table_info*, align 8
  %14 = alloca %struct.xt_table_info, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.xt_table*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.xt_table* %1, %struct.xt_table** %8, align 8
  store %struct.arpt_replace* %2, %struct.arpt_replace** %9, align 8
  store %struct.nf_hook_ops* %3, %struct.nf_hook_ops** %10, align 8
  store %struct.xt_table** %4, %struct.xt_table*** %11, align 8
  %17 = bitcast %struct.xt_table_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.arpt_replace*, %struct.arpt_replace** %9, align 8
  %19 = getelementptr inbounds %struct.arpt_replace, %struct.arpt_replace* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.xt_table_info* @xt_alloc_table_info(i32 %20)
  store %struct.xt_table_info* %21, %struct.xt_table_info** %13, align 8
  %22 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %23 = icmp ne %struct.xt_table_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %81

27:                                               ; preds = %5
  %28 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %29 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load %struct.arpt_replace*, %struct.arpt_replace** %9, align 8
  %33 = getelementptr inbounds %struct.arpt_replace, %struct.arpt_replace* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.arpt_replace*, %struct.arpt_replace** %9, align 8
  %36 = getelementptr inbounds %struct.arpt_replace, %struct.arpt_replace* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i8* %31, i32 %34, i32 %37)
  %39 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.arpt_replace*, %struct.arpt_replace** %9, align 8
  %42 = call i32 @translate_table(%struct.xt_table_info* %39, i8* %40, %struct.arpt_replace* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %77

46:                                               ; preds = %27
  %47 = load %struct.net*, %struct.net** %7, align 8
  %48 = load %struct.xt_table*, %struct.xt_table** %8, align 8
  %49 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %50 = call %struct.xt_table* @xt_register_table(%struct.net* %47, %struct.xt_table* %48, %struct.xt_table_info* %14, %struct.xt_table_info* %49)
  store %struct.xt_table* %50, %struct.xt_table** %16, align 8
  %51 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %52 = call i64 @IS_ERR(%struct.xt_table* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %56 = call i32 @PTR_ERR(%struct.xt_table* %55)
  store i32 %56, i32* %12, align 4
  br label %77

57:                                               ; preds = %46
  %58 = load %struct.xt_table**, %struct.xt_table*** %11, align 8
  %59 = load %struct.xt_table*, %struct.xt_table** %58, align 8
  %60 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %61 = call i32 @WRITE_ONCE(%struct.xt_table* %59, %struct.xt_table* %60)
  %62 = load %struct.net*, %struct.net** %7, align 8
  %63 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %64 = load %struct.xt_table*, %struct.xt_table** %8, align 8
  %65 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hweight32(i32 %66)
  %68 = call i32 @nf_register_net_hooks(%struct.net* %62, %struct.nf_hook_ops* %63, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %73 = call i32 @__arpt_unregister_table(%struct.xt_table* %72)
  %74 = load %struct.xt_table**, %struct.xt_table*** %11, align 8
  store %struct.xt_table* null, %struct.xt_table** %74, align 8
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %54, %45
  %78 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %79 = call i32 @xt_free_table_info(%struct.xt_table_info* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %75, %24
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.xt_table_info* @xt_alloc_table_info(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @translate_table(%struct.xt_table_info*, i8*, %struct.arpt_replace*) #2

declare dso_local %struct.xt_table* @xt_register_table(%struct.net*, %struct.xt_table*, %struct.xt_table_info*, %struct.xt_table_info*) #2

declare dso_local i64 @IS_ERR(%struct.xt_table*) #2

declare dso_local i32 @PTR_ERR(%struct.xt_table*) #2

declare dso_local i32 @WRITE_ONCE(%struct.xt_table*, %struct.xt_table*) #2

declare dso_local i32 @nf_register_net_hooks(%struct.net*, %struct.nf_hook_ops*, i32) #2

declare dso_local i32 @hweight32(i32) #2

declare dso_local i32 @__arpt_unregister_table(%struct.xt_table*) #2

declare dso_local i32 @xt_free_table_info(%struct.xt_table_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
