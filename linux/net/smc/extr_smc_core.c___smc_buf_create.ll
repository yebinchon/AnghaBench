; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c___smc_buf_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c___smc_buf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_2__, %struct.smc_connection }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smc_connection = type { i32, i32, %struct.smc_buf_desc*, i32, i32, %struct.smc_buf_desc*, %struct.smc_link_group* }
%struct.smc_buf_desc = type { i32, i32, i32, i32 }
%struct.smc_link_group = type { %struct.list_head*, i32, %struct.list_head*, i32 }
%struct.list_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SG_MAX_SINGLE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32, i32)* @__smc_buf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smc_buf_create(%struct.smc_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_buf_desc*, align 8
  %9 = alloca %struct.smc_connection*, align 8
  %10 = alloca %struct.smc_link_group*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.smc_buf_desc* @ERR_PTR(i32 %17)
  store %struct.smc_buf_desc* %18, %struct.smc_buf_desc** %8, align 8
  %19 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %20 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %19, i32 0, i32 1
  store %struct.smc_connection* %20, %struct.smc_connection** %9, align 8
  %21 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %22 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %21, i32 0, i32 6
  %23 = load %struct.smc_link_group*, %struct.smc_link_group** %22, align 8
  store %struct.smc_link_group* %23, %struct.smc_link_group** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %28 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %14, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %34 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @smc_compress_bufsize(i32 %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %123, %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %126

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %49 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %48, i32 0, i32 3
  store i32* %49, i32** %15, align 8
  %50 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %51 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %50, i32 0, i32 2
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 %54
  store %struct.list_head* %55, %struct.list_head** %11, align 8
  br label %65

56:                                               ; preds = %44
  %57 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %58 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %57, i32 0, i32 1
  store i32* %58, i32** %15, align 8
  %59 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %60 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %59, i32 0, i32 0
  %61 = load %struct.list_head*, %struct.list_head** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.list_head, %struct.list_head* %61, i64 %63
  store %struct.list_head* %64, %struct.list_head** %11, align 8
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @smc_uncompress_bufsize(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @get_order(i32 %68)
  %70 = shl i32 1, %69
  %71 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %123

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load %struct.list_head*, %struct.list_head** %11, align 8
  %78 = call %struct.smc_buf_desc* @smc_buf_get_slot(i32 %75, i32* %76, %struct.list_head* %77)
  store %struct.smc_buf_desc* %78, %struct.smc_buf_desc** %8, align 8
  %79 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %80 = icmp ne %struct.smc_buf_desc* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %83 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @memset(i32 %84, i32 0, i32 %85)
  br label %126

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call %struct.smc_buf_desc* @smcd_new_buf_create(%struct.smc_link_group* %91, i32 %92, i32 %93)
  store %struct.smc_buf_desc* %94, %struct.smc_buf_desc** %8, align 8
  br label %100

95:                                               ; preds = %87
  %96 = load %struct.smc_link_group*, %struct.smc_link_group** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call %struct.smc_buf_desc* @smcr_new_buf_create(%struct.smc_link_group* %96, i32 %97, i32 %98)
  store %struct.smc_buf_desc* %99, %struct.smc_buf_desc** %8, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %102 = call i32 @PTR_ERR(%struct.smc_buf_desc* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %126

107:                                              ; preds = %100
  %108 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %109 = call i64 @IS_ERR(%struct.smc_buf_desc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %123

112:                                              ; preds = %107
  %113 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %114 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @write_lock_bh(i32* %115)
  %117 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %118 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %117, i32 0, i32 2
  %119 = load %struct.list_head*, %struct.list_head** %11, align 8
  %120 = call i32 @list_add(i32* %118, %struct.list_head* %119)
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @write_unlock_bh(i32* %121)
  br label %126

123:                                              ; preds = %111, %73
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %13, align 4
  br label %41

126:                                              ; preds = %112, %106, %81, %41
  %127 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %128 = call i64 @IS_ERR(%struct.smc_buf_desc* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %177

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %133
  %137 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %138 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %139 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %138, i32 0, i32 5
  store %struct.smc_buf_desc* %137, %struct.smc_buf_desc** %139, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %142 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %12, align 4
  %144 = mul nsw i32 %143, 2
  %145 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %146 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %149 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %148, i32 0, i32 4
  %150 = call i32 @atomic_set(i32* %149, i32 0)
  %151 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %152 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @smc_rmb_wnd_update_limit(i32 %153)
  %155 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %156 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %136
  %160 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %161 = call i32 @smc_ism_set_conn(%struct.smc_connection* %160)
  br label %162

162:                                              ; preds = %159, %136
  br label %176

163:                                              ; preds = %133
  %164 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %165 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %166 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %165, i32 0, i32 2
  store %struct.smc_buf_desc* %164, %struct.smc_buf_desc** %166, align 8
  %167 = load i32, i32* %12, align 4
  %168 = mul nsw i32 %167, 2
  %169 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %170 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  %172 = load %struct.smc_connection*, %struct.smc_connection** %9, align 8
  %173 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %172, i32 0, i32 1
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @atomic_set(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %163, %162
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %130
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.smc_buf_desc* @ERR_PTR(i32) #1

declare dso_local i32 @smc_compress_bufsize(i32) #1

declare dso_local i32 @smc_uncompress_bufsize(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.smc_buf_desc* @smc_buf_get_slot(i32, i32*, %struct.list_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.smc_buf_desc* @smcd_new_buf_create(%struct.smc_link_group*, i32, i32) #1

declare dso_local %struct.smc_buf_desc* @smcr_new_buf_create(%struct.smc_link_group*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.smc_buf_desc*) #1

declare dso_local i64 @IS_ERR(%struct.smc_buf_desc*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smc_rmb_wnd_update_limit(i32) #1

declare dso_local i32 @smc_ism_set_conn(%struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
