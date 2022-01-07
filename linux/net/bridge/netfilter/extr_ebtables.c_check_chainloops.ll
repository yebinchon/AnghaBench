; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_check_chainloops.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_check_chainloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entries = type { i32, i64 }
%struct.ebt_cl_stack = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ebt_entry*, %struct.ebt_entries* }
%struct.ebt_entry = type { i64, i64 }
%struct.ebt_entry_target = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ebt_standard_target = type { i32 }

@EBT_STANDARD_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entries*, %struct.ebt_cl_stack*, i32, i32, i8*)* @check_chainloops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_chainloops(%struct.ebt_entries* %0, %struct.ebt_cl_stack* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ebt_entries*, align 8
  %8 = alloca %struct.ebt_cl_stack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ebt_entry*, align 8
  %18 = alloca %struct.ebt_entry_target*, align 8
  %19 = alloca %struct.ebt_entries*, align 8
  store %struct.ebt_entries* %0, %struct.ebt_entries** %7, align 8
  store %struct.ebt_cl_stack* %1, %struct.ebt_cl_stack** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %21 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %24 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ebt_entry*
  store %struct.ebt_entry* %26, %struct.ebt_entry** %17, align 8
  br label %27

27:                                               ; preds = %221, %179, %97, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, -1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ true, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %227

36:                                               ; preds = %34
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %41, i64 %43
  %45 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.ebt_entry*, %struct.ebt_entry** %46, align 8
  store %struct.ebt_entry* %47, %struct.ebt_entry** %17, align 8
  %48 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %48, i64 %50
  %52 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %70

55:                                               ; preds = %40
  %56 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %57 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %57, i64 %59
  %61 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %56, i64 %63
  %65 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.ebt_entries*, %struct.ebt_entries** %66, align 8
  %68 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %15, align 4
  br label %74

70:                                               ; preds = %40
  %71 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %72 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %55
  %75 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %75, i64 %77
  %79 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %82, i64 %84
  %86 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %88, i64 %90
  %92 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %27

98:                                               ; preds = %74
  br label %99

99:                                               ; preds = %98, %36
  %100 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %101 = call %struct.ebt_entry_target* @ebt_get_target_c(%struct.ebt_entry* %100)
  store %struct.ebt_entry_target* %101, %struct.ebt_entry_target** %18, align 8
  %102 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %18, align 8
  %103 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @EBT_STANDARD_TARGET, align 4
  %107 = call i64 @strcmp(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %221

110:                                              ; preds = %99
  %111 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %112 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 4
  %115 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %116 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 -1, i32* %6, align 4
  br label %228

120:                                              ; preds = %110
  %121 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %18, align 8
  %122 = bitcast %struct.ebt_entry_target* %121 to %struct.ebt_standard_target*
  %123 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %220

127:                                              ; preds = %120
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to %struct.ebt_entries*
  store %struct.ebt_entries* %132, %struct.ebt_entries** %19, align 8
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %149, %127
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %139 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %139, i64 %141
  %143 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load %struct.ebt_entries*, %struct.ebt_entries** %144, align 8
  %146 = icmp eq %struct.ebt_entries* %138, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %152

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %133

152:                                              ; preds = %147, %133
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 -1, i32* %6, align 4
  br label %228

157:                                              ; preds = %152
  %158 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %158, i64 %160
  %162 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32 -1, i32* %6, align 4
  br label %228

167:                                              ; preds = %157
  %168 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %168, i64 %170
  %172 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %10, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %221

179:                                              ; preds = %167
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  %182 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %182, i64 %184
  %186 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i32 %181, i32* %187, align 8
  store i32 0, i32* %14, align 4
  %188 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %189 = call i8* @ebt_next_entry(%struct.ebt_entry* %188)
  %190 = bitcast i8* %189 to %struct.ebt_entry*
  %191 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %191, i64 %193
  %195 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store %struct.ebt_entry* %190, %struct.ebt_entry** %196, align 8
  %197 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %198 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to %struct.ebt_entry*
  store %struct.ebt_entry* %200, %struct.ebt_entry** %17, align 8
  %201 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %202 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %205, i64 %207
  %209 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %208, i32 0, i32 0
  store i32 %204, i32* %209, align 8
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 1, %211
  %213 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %213, i64 %215
  %217 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %212
  store i32 %219, i32* %217, align 4
  br label %27

220:                                              ; preds = %120
  br label %221

221:                                              ; preds = %220, %178, %109
  %222 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %223 = call i8* @ebt_next_entry(%struct.ebt_entry* %222)
  %224 = bitcast i8* %223 to %struct.ebt_entry*
  store %struct.ebt_entry* %224, %struct.ebt_entry** %17, align 8
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %27

227:                                              ; preds = %34
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %227, %166, %156, %119
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local %struct.ebt_entry_target* @ebt_get_target_c(%struct.ebt_entry*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @ebt_next_entry(%struct.ebt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
