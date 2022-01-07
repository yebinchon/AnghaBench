; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.irq_desc = type { i32, i32, i32, i32, %struct.irqaction*, i32, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.irqaction = type { i32, i32, i64, i64, %struct.task_struct*, %struct.irqaction*, i32, i32*, %struct.irqaction*, i64 }
%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@no_irq_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@irq_nested_primary_handler = common dso_local global i64 0, align 8
@IRQCHIP_ONESHOT_SAFE = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to request resources for %s (irq %d) on irqchip %s\0A\00", align 1
@IRQS_NMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@irq_default_primary_handler = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"Threaded irq requested with handler=NULL and !ONESHOT for irq %d\0A\00", align 1
@IRQS_AUTODETECT = common dso_local global i32 0, align 4
@IRQS_SPURIOUS_DISABLED = common dso_local global i32 0, align 4
@IRQS_ONESHOT = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQD_IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQD_PER_CPU = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQD_NO_BALANCING = common dso_local global i32 0, align 4
@IRQ_RESEND = common dso_local global i32 0, align 4
@IRQ_START_COND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"irq %d uses trigger mode %u; requested %u\0A\00", align 1
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irq_desc*, %struct.irqaction*)* @__setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setup_irq(i32 %0, %struct.irq_desc* %1, %struct.irqaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irqaction*, align 8
  %8 = alloca %struct.irqaction*, align 8
  %9 = alloca %struct.irqaction**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.task_struct*, align 8
  %19 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %6, align 8
  store %struct.irqaction* %2, %struct.irqaction** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %21 = icmp ne %struct.irq_desc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %613

25:                                               ; preds = %3
  %26 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, @no_irq_chip
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %613

34:                                               ; preds = %25
  %35 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @try_module_get(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %613

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %46 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %48 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %43
  %54 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 8
  %56 = call i32 @irqd_get_trigger_type(%struct.TYPE_8__* %55)
  %57 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %58 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %43
  %62 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %63 = call i32 @irq_settings_is_nested_thread(%struct.irq_desc* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %68 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %607

74:                                               ; preds = %66
  %75 = load i64, i64* @irq_nested_primary_handler, align 8
  %76 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %77 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %90

78:                                               ; preds = %61
  %79 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %80 = call i64 @irq_settings_can_thread(%struct.irq_desc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %84 = call i32 @irq_setup_forced_threading(%struct.irqaction* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %607

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %92 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %95
  %99 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @setup_irq_thread(%struct.irqaction* %99, i32 %100, i32 0)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %607

105:                                              ; preds = %98
  %106 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %107 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %106, i32 0, i32 5
  %108 = load %struct.irqaction*, %struct.irqaction** %107, align 8
  %109 = icmp ne %struct.irqaction* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %112 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %111, i32 0, i32 5
  %113 = load %struct.irqaction*, %struct.irqaction** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @setup_irq_thread(%struct.irqaction* %113, i32 %114, i32 1)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %565

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %95, %90
  %122 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %123 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IRQCHIP_ONESHOT_SAFE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load i32, i32* @IRQF_ONESHOT, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %135 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %121
  %139 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %140 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %139, i32 0, i32 3
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %143 = call i32 @chip_bus_lock(%struct.irq_desc* %142)
  %144 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %145 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %144, i32 0, i32 4
  %146 = load %struct.irqaction*, %struct.irqaction** %145, align 8
  %147 = icmp ne %struct.irqaction* %146, null
  br i1 %147, label %166, label %148

148:                                              ; preds = %138
  %149 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %150 = call i32 @irq_request_resources(%struct.irq_desc* %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %155 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %159 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %157, i32 %163)
  br label %559

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165, %138
  %167 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %168 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %167, i32 0, i32 5
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @raw_spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %172 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %171, i32 0, i32 4
  store %struct.irqaction** %172, %struct.irqaction*** %9, align 8
  %173 = load %struct.irqaction**, %struct.irqaction*** %9, align 8
  %174 = load %struct.irqaction*, %struct.irqaction** %173, align 8
  store %struct.irqaction* %174, %struct.irqaction** %8, align 8
  %175 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %176 = icmp ne %struct.irqaction* %175, null
  br i1 %176, label %177, label %276

177:                                              ; preds = %166
  %178 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %179 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IRQS_NMI, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %177
  %185 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %186 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %190 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %187, i32 %188, i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %12, align 4
  br label %546

198:                                              ; preds = %177
  %199 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %200 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %199, i32 0, i32 8
  %201 = call i64 @irqd_trigger_type_was_set(%struct.TYPE_8__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %205 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %204, i32 0, i32 8
  %206 = call i32 @irqd_get_trigger_type(%struct.TYPE_8__* %205)
  store i32 %206, i32* %15, align 4
  br label %217

207:                                              ; preds = %198
  %208 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %209 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %212 = and i32 %210, %211
  store i32 %212, i32* %15, align 4
  %213 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %214 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %213, i32 0, i32 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @irqd_set_trigger_type(%struct.TYPE_8__* %214, i32 %215)
  br label %217

217:                                              ; preds = %207, %203
  %218 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %219 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %222 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %220, %223
  %225 = load i32, i32* @IRQF_SHARED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %217
  %229 = load i32, i32* %15, align 4
  %230 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %231 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %229, %234
  br i1 %235, label %247, label %236

236:                                              ; preds = %228
  %237 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %238 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %241 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %239, %242
  %244 = load i32, i32* @IRQF_ONESHOT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236, %228, %217
  br label %521

248:                                              ; preds = %236
  %249 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %250 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IRQF_PERCPU, align 4
  %253 = and i32 %251, %252
  %254 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %255 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IRQF_PERCPU, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %253, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %248
  br label %521

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %272, %261
  %263 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %264 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %11, align 8
  %267 = or i64 %266, %265
  store i64 %267, i64* %11, align 8
  %268 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %269 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %268, i32 0, i32 8
  store %struct.irqaction** %269, %struct.irqaction*** %9, align 8
  %270 = load %struct.irqaction**, %struct.irqaction*** %9, align 8
  %271 = load %struct.irqaction*, %struct.irqaction** %270, align 8
  store %struct.irqaction* %271, %struct.irqaction** %8, align 8
  br label %272

272:                                              ; preds = %262
  %273 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %274 = icmp ne %struct.irqaction* %273, null
  br i1 %274, label %262, label %275

275:                                              ; preds = %272
  store i32 1, i32* %14, align 4
  br label %276

276:                                              ; preds = %275, %166
  %277 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %278 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @IRQF_ONESHOT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %276
  %284 = load i64, i64* %11, align 8
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* @EBUSY, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %12, align 4
  br label %546

289:                                              ; preds = %283
  %290 = load i64, i64* %11, align 8
  %291 = call i64 @ffz(i64 %290)
  %292 = shl i64 1, %291
  %293 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %294 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %293, i32 0, i32 3
  store i64 %292, i64* %294, align 8
  br label %317

295:                                              ; preds = %276
  %296 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %297 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @irq_default_primary_handler, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %316

301:                                              ; preds = %295
  %302 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %303 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IRQCHIP_ONESHOT_SAFE, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %301
  %312 = load i32, i32* %5, align 4
  %313 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %12, align 4
  br label %546

316:                                              ; preds = %301, %295
  br label %317

317:                                              ; preds = %316, %289
  %318 = load i32, i32* %14, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %424, label %320

320:                                              ; preds = %317
  %321 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %322 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %321, i32 0, i32 9
  %323 = call i32 @init_waitqueue_head(i32* %322)
  %324 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %325 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %320
  %331 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %332 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %333 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %336 = and i32 %334, %335
  %337 = call i32 @__irq_set_trigger(%struct.irq_desc* %331, i32 %336)
  store i32 %337, i32* %12, align 4
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %330
  br label %546

341:                                              ; preds = %330
  br label %342

342:                                              ; preds = %341, %320
  %343 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %344 = call i32 @irq_activate(%struct.irq_desc* %343)
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  br label %546

348:                                              ; preds = %342
  %349 = load i32, i32* @IRQS_AUTODETECT, align 4
  %350 = load i32, i32* @IRQS_SPURIOUS_DISABLED, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @IRQS_ONESHOT, align 4
  %353 = or i32 %351, %352
  %354 = load i32, i32* @IRQS_WAITING, align 4
  %355 = or i32 %353, %354
  %356 = xor i32 %355, -1
  %357 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %358 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %362 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %361, i32 0, i32 8
  %363 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %364 = call i32 @irqd_clear(%struct.TYPE_8__* %362, i32 %363)
  %365 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %366 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @IRQF_PERCPU, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %348
  %372 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %373 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %372, i32 0, i32 8
  %374 = load i32, i32* @IRQD_PER_CPU, align 4
  %375 = call i32 @irqd_set(%struct.TYPE_8__* %373, i32 %374)
  %376 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %377 = call i32 @irq_settings_set_per_cpu(%struct.irq_desc* %376)
  br label %378

378:                                              ; preds = %371, %348
  %379 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %380 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @IRQF_ONESHOT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %378
  %386 = load i32, i32* @IRQS_ONESHOT, align 4
  %387 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %388 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %385, %378
  %392 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %393 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @IRQF_NOBALANCING, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %391
  %399 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %400 = call i32 @irq_settings_set_no_balancing(%struct.irq_desc* %399)
  %401 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %402 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %401, i32 0, i32 8
  %403 = load i32, i32* @IRQD_NO_BALANCING, align 4
  %404 = call i32 @irqd_set(%struct.TYPE_8__* %402, i32 %403)
  br label %405

405:                                              ; preds = %398, %391
  %406 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %407 = call i64 @irq_settings_can_autoenable(%struct.irq_desc* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %405
  %410 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %411 = load i32, i32* @IRQ_RESEND, align 4
  %412 = load i32, i32* @IRQ_START_COND, align 4
  %413 = call i32 @irq_startup(%struct.irq_desc* %410, i32 %411, i32 %412)
  br label %423

414:                                              ; preds = %405
  %415 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %416 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @IRQF_SHARED, align 4
  %419 = and i32 %417, %418
  %420 = call i32 @WARN_ON_ONCE(i32 %419)
  %421 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %422 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %421, i32 0, i32 1
  store i32 1, i32* %422, align 4
  br label %423

423:                                              ; preds = %414, %409
  br label %450

424:                                              ; preds = %317
  %425 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %426 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %449

431:                                              ; preds = %424
  %432 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %433 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %436 = and i32 %434, %435
  store i32 %436, i32* %16, align 4
  %437 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %438 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %437, i32 0, i32 8
  %439 = call i32 @irqd_get_trigger_type(%struct.TYPE_8__* %438)
  store i32 %439, i32* %17, align 4
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* %17, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %431
  %444 = load i32, i32* %5, align 4
  %445 = load i32, i32* %17, align 4
  %446 = load i32, i32* %16, align 4
  %447 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %444, i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %443, %431
  br label %449

449:                                              ; preds = %448, %424
  br label %450

450:                                              ; preds = %449, %423
  %451 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %452 = load %struct.irqaction**, %struct.irqaction*** %9, align 8
  store %struct.irqaction* %451, %struct.irqaction** %452, align 8
  %453 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %454 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %455 = call i32 @irq_pm_install_action(%struct.irq_desc* %453, %struct.irqaction* %454)
  %456 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %457 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %456, i32 0, i32 7
  store i64 0, i64* %457, align 8
  %458 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %459 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %458, i32 0, i32 6
  store i64 0, i64* %459, align 8
  %460 = load i32, i32* %14, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %478

462:                                              ; preds = %450
  %463 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %464 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @IRQS_SPURIOUS_DISABLED, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %462
  %470 = load i32, i32* @IRQS_SPURIOUS_DISABLED, align 4
  %471 = xor i32 %470, -1
  %472 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %473 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = and i32 %474, %471
  store i32 %475, i32* %473, align 8
  %476 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %477 = call i32 @__enable_irq(%struct.irq_desc* %476)
  br label %478

478:                                              ; preds = %469, %462, %450
  %479 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %480 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %479, i32 0, i32 5
  %481 = load i64, i64* %10, align 8
  %482 = call i32 @raw_spin_unlock_irqrestore(i32* %480, i64 %481)
  %483 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %484 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %483)
  %485 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %486 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %485, i32 0, i32 3
  %487 = call i32 @mutex_unlock(i32* %486)
  %488 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %489 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %490 = call i32 @irq_setup_timings(%struct.irq_desc* %488, %struct.irqaction* %489)
  %491 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %492 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %491, i32 0, i32 4
  %493 = load %struct.task_struct*, %struct.task_struct** %492, align 8
  %494 = icmp ne %struct.task_struct* %493, null
  br i1 %494, label %495, label %500

495:                                              ; preds = %478
  %496 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %497 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %496, i32 0, i32 4
  %498 = load %struct.task_struct*, %struct.task_struct** %497, align 8
  %499 = call i32 @wake_up_process(%struct.task_struct* %498)
  br label %500

500:                                              ; preds = %495, %478
  %501 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %502 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %501, i32 0, i32 5
  %503 = load %struct.irqaction*, %struct.irqaction** %502, align 8
  %504 = icmp ne %struct.irqaction* %503, null
  br i1 %504, label %505, label %512

505:                                              ; preds = %500
  %506 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %507 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %506, i32 0, i32 5
  %508 = load %struct.irqaction*, %struct.irqaction** %507, align 8
  %509 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %508, i32 0, i32 4
  %510 = load %struct.task_struct*, %struct.task_struct** %509, align 8
  %511 = call i32 @wake_up_process(%struct.task_struct* %510)
  br label %512

512:                                              ; preds = %505, %500
  %513 = load i32, i32* %5, align 4
  %514 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %515 = call i32 @register_irq_proc(i32 %513, %struct.irq_desc* %514)
  %516 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %517 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %516, i32 0, i32 7
  store i32* null, i32** %517, align 8
  %518 = load i32, i32* %5, align 4
  %519 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %520 = call i32 @register_handler_proc(i32 %518, %struct.irqaction* %519)
  store i32 0, i32* %4, align 4
  br label %613

521:                                              ; preds = %260, %247
  %522 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %523 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %543, label %528

528:                                              ; preds = %521
  %529 = load i32, i32* %5, align 4
  %530 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %531 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %534 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %533, i32 0, i32 6
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %537 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %540 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %529, i32 %532, i32 %535, i32 %538, i32 %541)
  br label %543

543:                                              ; preds = %528, %521
  %544 = load i32, i32* @EBUSY, align 4
  %545 = sub nsw i32 0, %544
  store i32 %545, i32* %12, align 4
  br label %546

546:                                              ; preds = %543, %347, %340, %311, %286, %184
  %547 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %548 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %547, i32 0, i32 5
  %549 = load i64, i64* %10, align 8
  %550 = call i32 @raw_spin_unlock_irqrestore(i32* %548, i64 %549)
  %551 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %552 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %551, i32 0, i32 4
  %553 = load %struct.irqaction*, %struct.irqaction** %552, align 8
  %554 = icmp ne %struct.irqaction* %553, null
  br i1 %554, label %558, label %555

555:                                              ; preds = %546
  %556 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %557 = call i32 @irq_release_resources(%struct.irq_desc* %556)
  br label %558

558:                                              ; preds = %555, %546
  br label %559

559:                                              ; preds = %558, %153
  %560 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %561 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %560)
  %562 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %563 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %562, i32 0, i32 3
  %564 = call i32 @mutex_unlock(i32* %563)
  br label %565

565:                                              ; preds = %559, %118
  %566 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %567 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %566, i32 0, i32 4
  %568 = load %struct.task_struct*, %struct.task_struct** %567, align 8
  %569 = icmp ne %struct.task_struct* %568, null
  br i1 %569, label %570, label %580

570:                                              ; preds = %565
  %571 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %572 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %571, i32 0, i32 4
  %573 = load %struct.task_struct*, %struct.task_struct** %572, align 8
  store %struct.task_struct* %573, %struct.task_struct** %18, align 8
  %574 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %575 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %574, i32 0, i32 4
  store %struct.task_struct* null, %struct.task_struct** %575, align 8
  %576 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %577 = call i32 @kthread_stop(%struct.task_struct* %576)
  %578 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %579 = call i32 @put_task_struct(%struct.task_struct* %578)
  br label %580

580:                                              ; preds = %570, %565
  %581 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %582 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %581, i32 0, i32 5
  %583 = load %struct.irqaction*, %struct.irqaction** %582, align 8
  %584 = icmp ne %struct.irqaction* %583, null
  br i1 %584, label %585, label %606

585:                                              ; preds = %580
  %586 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %587 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %586, i32 0, i32 5
  %588 = load %struct.irqaction*, %struct.irqaction** %587, align 8
  %589 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %588, i32 0, i32 4
  %590 = load %struct.task_struct*, %struct.task_struct** %589, align 8
  %591 = icmp ne %struct.task_struct* %590, null
  br i1 %591, label %592, label %606

592:                                              ; preds = %585
  %593 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %594 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %593, i32 0, i32 5
  %595 = load %struct.irqaction*, %struct.irqaction** %594, align 8
  %596 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %595, i32 0, i32 4
  %597 = load %struct.task_struct*, %struct.task_struct** %596, align 8
  store %struct.task_struct* %597, %struct.task_struct** %19, align 8
  %598 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %599 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %598, i32 0, i32 5
  %600 = load %struct.irqaction*, %struct.irqaction** %599, align 8
  %601 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %600, i32 0, i32 4
  store %struct.task_struct* null, %struct.task_struct** %601, align 8
  %602 = load %struct.task_struct*, %struct.task_struct** %19, align 8
  %603 = call i32 @kthread_stop(%struct.task_struct* %602)
  %604 = load %struct.task_struct*, %struct.task_struct** %19, align 8
  %605 = call i32 @put_task_struct(%struct.task_struct* %604)
  br label %606

606:                                              ; preds = %592, %585, %580
  br label %607

607:                                              ; preds = %606, %104, %87, %71
  %608 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %609 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 8
  %611 = call i32 @module_put(i32 %610)
  %612 = load i32, i32* %12, align 4
  store i32 %612, i32* %4, align 4
  br label %613

613:                                              ; preds = %607, %512, %40, %31, %22
  %614 = load i32, i32* %4, align 4
  ret i32 %614
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.TYPE_8__*) #1

declare dso_local i32 @irq_settings_is_nested_thread(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_can_thread(%struct.irq_desc*) #1

declare dso_local i32 @irq_setup_forced_threading(%struct.irqaction*) #1

declare dso_local i32 @setup_irq_thread(%struct.irqaction*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chip_bus_lock(%struct.irq_desc*) #1

declare dso_local i32 @irq_request_resources(%struct.irq_desc*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @irqd_trigger_type_was_set(%struct.TYPE_8__*) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ffz(i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @__irq_set_trigger(%struct.irq_desc*, i32) #1

declare dso_local i32 @irq_activate(%struct.irq_desc*) #1

declare dso_local i32 @irqd_clear(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @irqd_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @irq_settings_set_per_cpu(%struct.irq_desc*) #1

declare dso_local i32 @irq_settings_set_no_balancing(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_can_autoenable(%struct.irq_desc*) #1

declare dso_local i32 @irq_startup(%struct.irq_desc*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @irq_pm_install_action(%struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @__enable_irq(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @chip_bus_sync_unlock(%struct.irq_desc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_setup_timings(%struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @register_irq_proc(i32, %struct.irq_desc*) #1

declare dso_local i32 @register_handler_proc(i32, %struct.irqaction*) #1

declare dso_local i32 @irq_release_resources(%struct.irq_desc*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
