; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_grab_mapping_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_grab_mapping_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64, i64 }
%struct.address_space = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PG_PMD_COLOUR = common dso_local global i32 0, align 4
@PG_PMD_NR = common dso_local global i32 0, align 4
@DAX_EMPTY = common dso_local global i64 0, align 8
@DAX_PMD = common dso_local global i64 0, align 8
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*, %struct.address_space*, i32)* @grab_mapping_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grab_mapping_entry(%struct.xa_state* %0, %struct.address_space* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xa_state*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.xa_state* %0, %struct.xa_state** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %13 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %141, %3
  %16 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %17 = call i32 @xas_lock_irq(%struct.xa_state* %16)
  %18 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @get_unlocked_entry(%struct.xa_state* %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %15
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @dax_is_conflict(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %162

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @xa_is_value(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @xas_set_err(%struct.xa_state* %33, i32 %34)
  br label %130

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @dax_is_pmd_entry(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @dax_is_zero_entry(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @dax_is_empty_entry(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %47, %39
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  %58 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @dax_lock_entry(%struct.xa_state* %58, i8* %59)
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @dax_is_zero_entry(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %66 = call i32 @xas_unlock_irq(%struct.xa_state* %65)
  %67 = load %struct.address_space*, %struct.address_space** %6, align 8
  %68 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %69 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @PG_PMD_COLOUR, align 4
  %72 = xor i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @PG_PMD_NR, align 4
  %77 = call i32 @unmap_mapping_pages(%struct.address_space* %67, i32 %75, i32 %76, i32 0)
  %78 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %79 = call i32 @xas_reset(%struct.xa_state* %78)
  %80 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %81 = call i32 @xas_lock_irq(%struct.xa_state* %80)
  br label %82

82:                                               ; preds = %64, %57
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.address_space*, %struct.address_space** %6, align 8
  %85 = call i32 @dax_disassociate_entry(i8* %83, %struct.address_space* %84, i32 0)
  %86 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %87 = call i32 @xas_store(%struct.xa_state* %86, i32* null)
  %88 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @dax_wake_entry(%struct.xa_state* %88, i8* %89, i32 1)
  %91 = load %struct.address_space*, %struct.address_space** %6, align 8
  %92 = getelementptr inbounds %struct.address_space, %struct.address_space* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  store i8* null, i8** %10, align 8
  %95 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @xas_set(%struct.xa_state* %95, i64 %96)
  br label %98

98:                                               ; preds = %82, %54
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @dax_lock_entry(%struct.xa_state* %102, i8* %103)
  br label %129

105:                                              ; preds = %98
  %106 = load i64, i64* @DAX_EMPTY, align 8
  store i64 %106, i64* %11, align 8
  %107 = load i32, i32* %7, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, i64* @DAX_PMD, align 8
  %111 = load i64, i64* %11, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = call i32 @pfn_to_pfn_t(i32 0)
  %115 = load i64, i64* %11, align 8
  %116 = call i8* @dax_make_entry(i32 %114, i64 %115)
  store i8* %116, i8** %10, align 8
  %117 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @dax_lock_entry(%struct.xa_state* %117, i8* %118)
  %120 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %121 = call i64 @xas_error(%struct.xa_state* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %130

124:                                              ; preds = %113
  %125 = load %struct.address_space*, %struct.address_space** %6, align 8
  %126 = getelementptr inbounds %struct.address_space, %struct.address_space* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %101
  br label %130

130:                                              ; preds = %129, %123, %32
  %131 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %132 = call i32 @xas_unlock_irq(%struct.xa_state* %131)
  %133 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %134 = load %struct.address_space*, %struct.address_space** %6, align 8
  %135 = call i32 @mapping_gfp_mask(%struct.address_space* %134)
  %136 = load i32, i32* @__GFP_HIGHMEM, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = call i64 @xas_nomem(%struct.xa_state* %133, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %15

142:                                              ; preds = %130
  %143 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %144 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  %148 = call i64 @XA_ERROR(i32 %147)
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* @VM_FAULT_OOM, align 4
  %152 = call i8* @xa_mk_internal(i32 %151)
  store i8* %152, i8** %4, align 8
  br label %167

153:                                              ; preds = %142
  %154 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %155 = call i64 @xas_error(%struct.xa_state* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %159 = call i8* @xa_mk_internal(i32 %158)
  store i8* %159, i8** %4, align 8
  br label %167

160:                                              ; preds = %153
  %161 = load i8*, i8** %10, align 8
  store i8* %161, i8** %4, align 8
  br label %167

162:                                              ; preds = %27
  %163 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %164 = call i32 @xas_unlock_irq(%struct.xa_state* %163)
  %165 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %166 = call i8* @xa_mk_internal(i32 %165)
  store i8* %166, i8** %4, align 8
  br label %167

167:                                              ; preds = %162, %160, %157, %150
  %168 = load i8*, i8** %4, align 8
  ret i8* %168
}

declare dso_local i32 @xas_lock_irq(%struct.xa_state*) #1

declare dso_local i8* @get_unlocked_entry(%struct.xa_state*, i32) #1

declare dso_local i64 @dax_is_conflict(i8*) #1

declare dso_local i32 @xa_is_value(i8*) #1

declare dso_local i32 @xas_set_err(%struct.xa_state*, i32) #1

declare dso_local i64 @dax_is_pmd_entry(i8*) #1

declare dso_local i64 @dax_is_zero_entry(i8*) #1

declare dso_local i64 @dax_is_empty_entry(i8*) #1

declare dso_local i32 @dax_lock_entry(%struct.xa_state*, i8*) #1

declare dso_local i32 @xas_unlock_irq(%struct.xa_state*) #1

declare dso_local i32 @unmap_mapping_pages(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @xas_reset(%struct.xa_state*) #1

declare dso_local i32 @dax_disassociate_entry(i8*, %struct.address_space*, i32) #1

declare dso_local i32 @xas_store(%struct.xa_state*, i32*) #1

declare dso_local i32 @dax_wake_entry(%struct.xa_state*, i8*, i32) #1

declare dso_local i32 @xas_set(%struct.xa_state*, i64) #1

declare dso_local i8* @dax_make_entry(i32, i64) #1

declare dso_local i32 @pfn_to_pfn_t(i32) #1

declare dso_local i64 @xas_error(%struct.xa_state*) #1

declare dso_local i64 @xas_nomem(%struct.xa_state*, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i64 @XA_ERROR(i32) #1

declare dso_local i8* @xa_mk_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
